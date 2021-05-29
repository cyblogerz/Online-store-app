import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Hello 8 hours of flutter'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
