import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'My First Flutter App',
        home: new HomePage(
          title: 'Home Page',
        ));
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(this.title)),
      body: new HelloWorldText(),
    );
  }
}

class HelloWorldText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Text(
      "Hello Flutter",
      textDirection: TextDirection.ltr,
      style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
    ));
  }
}
