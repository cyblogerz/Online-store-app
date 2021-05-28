import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Catalog App'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello 8 hours of flutter'),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
