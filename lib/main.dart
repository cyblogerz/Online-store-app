import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:flutter_catalog/screens/loginpage.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'screens/homepage.dart';
import 'screens/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //function first letter small,
  //Class - caps
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      initialRoute: MyRoutes.homeroute,
      routes: {
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
