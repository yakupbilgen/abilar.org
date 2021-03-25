import 'package:flutter/material.dart';

import '/widget/homepage_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          icon: Icon(Icons.menu),
          tooltip: 'Menüyü aç',
        ),
        title: Text(
          'ABA',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
            tooltip: 'Puan ver',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
            tooltip: 'Paylaş',
          ),
        ],
      ),
      drawer: HomePageDrawer(),
    );
  }
}
