import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              margin: new EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0, top:0.0),
              padding: new EdgeInsets.only(left: 0.0, right: 0.0, top:0.0),
              decoration: new BoxDecoration(
                color: new Color(Colors.orange.value),
              ),
              child: new Image(
                image: new AssetImage('assets/rick.jpeg')
              ),
            ),
            new ListTile(
              title: new Text("Rick et Morthy"),
              onTap: (){
                Navigator.of(context).pushNamed('/rick');
              },
            ),
            new ListTile(
              title: new Text("Asterix et Obélix"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        )
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}