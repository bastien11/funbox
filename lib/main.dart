import 'package:flutter/material.dart';
import 'home.dart';
import 'rick.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fun Box',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        canvasColor: new Color(Colors.grey.value),
      ),
      home: new Home(title: 'Fun Box Home Page'),
      routes: <String, WidgetBuilder> {
        '/rick': (BuildContext context) => new Rick(title: 'Rick',)
      },
    );
  }
}
