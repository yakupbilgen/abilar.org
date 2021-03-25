import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(),
    );
  }
}
