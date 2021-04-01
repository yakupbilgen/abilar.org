import 'package:abilar/widget/goto_url.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '/widget/homepage_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String url =
      "https://twitter.com/intent/tweet?text=Mobil%20uygulamas%C4%B1n%C4%B1%20indirdiniz%20mi?%20https://play.google.com/store/apps/details?id=com.twitter.android";
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
            onPressed: () {
              Share.share('Bizi twitterda paylaş!');
              gotoUrl(url);
            },
            icon: Icon(Icons.share),
            tooltip: 'Paylaş',
          ),
        ],
      ),
      drawer: HomePageDrawer(),
    );
  }
}
