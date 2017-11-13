import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rick extends StatefulWidget {
  final String title;

  Rick({Key key, this.title}) : super (key: key);

  @override
  RickState createState() => new RickState();
}

class RickState extends State<Rick>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Rick Page"),
      ),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Impressionez moi !"),
              onTap: (){

              },
            )
          ],
        ),
      ),
    );
  }
}