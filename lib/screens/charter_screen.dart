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
    _htmlData = '';
    setState(() {});
    await http.get(_charterUrl).then((value) {
      _htmlData = value.body;
      // _htmlData = _htmlData.replaceAll('\n', '');
      // _htmlData = _htmlData.replaceAll('  ', '');

      RegExp search = RegExp(
          '<article id="post-131" class="post-131 page type-page status-publish hentry">(.*?)</article>');
      Match _matcing = search.firstMatch(_htmlData);
      _htmlData = _matcing.group(1);
      debugPrint(_htmlData);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _getHttpData();
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
