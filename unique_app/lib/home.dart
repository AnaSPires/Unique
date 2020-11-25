
import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

void main() {
  runApp(MaterialApp(title: "Home", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            Row(//mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
             //Column(
             // mainAxisAlignment: MainAxisAlignment.center,
             // children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom:25.0),
                    child:
                      Text(
                        "Transtornos de aprendizagem são problemas neurológicos que dificultam o processo de aprendizagem de leitura e escrita.",
                         style: TextStyle(fontSize: 20.5, color: Colors.white,
                                          decoration: TextDecoration.none,),
                                      ),
                  ),

                 Padding(
                    padding: EdgeInsets.only(bottom:25.0),  
                      child: Text(
                        "Os primeiros indícios da presença de algum desses distúrbios começam a aparecer logo na infância, quando a criança começa a ter contato com atividades que requerem habilidades de  processamento de informações, que é prejudicado por essas disfunções.",
                         style: TextStyle(fontSize: 20.5, color: Colors.white,
                              decoration: TextDecoration.none,),
                          ),),
                VerticalTabs(
                  tabsWidth: 150,
                  tabs: <Tab>[
                    Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
                    Tab(child: Text('Dart')),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 1),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite),
                            SizedBox(width: 25),
                            Text('Javascript'),
                          ],
                        ),
                      ),
                    ),
                    Tab(child: Text('NodeJS')),
                    Tab(child: Text('PHP')),
                    Tab(child: Text('HTML 5')),
                    Tab(child: Text('CSS 3')),
                  ],
                  contents: <Widget>[
                    tabsContent('Flutter', 'Change page by scrolling content is disabled in settings. Changing contents pages is only available via tapping on tabs'),
                    tabsContent('Dart'),
                    tabsContent('Javascript'),
                    tabsContent('NodeJS'),
                    Container(
                        color: Colors.black12,
                        child: ListView.builder(
                            itemCount: 10,
                            itemExtent: 100,
                            itemBuilder: (context, index){
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.white30,
                              );
                            })
                    ),
                    tabsContent('HTML 5'),
                    Container(
                        color: Colors.black12,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemExtent: 100,
                            itemBuilder: (context, index){
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.white30,
                              );
                            })
                    ),
                  ],
                ), 
            ]),     
    );
  }

  Widget tabsContent(String caption, [ String description = '' ] ) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Text(
            caption,
            style: TextStyle(fontSize: 25),
          ),
          Divider(height: 20, color: Colors.black45,),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
