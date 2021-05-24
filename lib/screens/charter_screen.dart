import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CharterScreen extends StatefulWidget {
  @override
  _CharterScreenState createState() => _CharterScreenState();
}

class _CharterScreenState extends State<CharterScreen> {
  String _htmlData = '';
  var _charterUrl = Uri.parse('https://abilar.org/hakkimizda/tuzuk');

  Future _getHttpData() async {
    await http.get(_charterUrl).then((value) {
      _htmlData = value.body;
      debugPrint(_htmlData);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tüzük',
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          IconButton(
            onPressed: _getHttpData,
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
          child: _htmlData.length > 0
              ? SingleChildScrollView(child: Text(_htmlData))
              : CircularProgressIndicator()),
    );
  }
}
