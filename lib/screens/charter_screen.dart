import 'package:flutter/material.dart';

class CharterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tüzük',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(),
      ),
    );
  }
}
