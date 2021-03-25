import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main() {
  runApp(HomePageMain());
}

class HomePageMain extends StatefulWidget {
  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xFF2F2C7F),
        accentColor: Colors.indigo,
      ),
      routes: buildRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

var buildRoute = <String, WidgetBuilder>{
  "anasayfa": (BuildContext context) => HomePage(),
};
