import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/drawer.dart';
import 'package:flutter_catalog/Widgets/item_widget.dart';
import 'package:flutter_catalog/models/catalog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    //generate 50 item[0]
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      //listview builder is that the things you currenttly seeing on the screen will renderfirst and rest will render as you scroll down

      drawer: MyDrawer(),
    );
  }
}
