import 'package:flutter/material.dart';

import 'color/color.dart';
import 'screens/charter_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/founding_members_screen.dart';
import 'screens/homepage_screen.dart';

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
        primaryColor: themaColor,
        accentColor: Colors.indigo,
      ),
      routes: buildRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

var buildRoute = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => HomePage(),
  "/iletisim": (BuildContext context) => ContactScreen(),
  "/foundingmembers": (BuildContext context) => FoundingMembers(),
  "/charter": (BuildContext context) => CharterScreen(),
};
