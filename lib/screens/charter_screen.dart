import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';

class CharterScreen extends StatefulWidget {
  @override
  _CharterScreenState createState() => _CharterScreenState();
}

class _CharterScreenState extends State<CharterScreen> {
  String _htmlData = '';
  var _charterUrl = Uri.parse('https://abilar.org/regulations/');

  Future _getHttpData() async {
    //_htmlData = '';
    setState(() {});
    await http.get(_charterUrl).then((value) {
      _htmlData = value.body
          .replaceAll('\n', '')
          .replaceAll('\t', '')
          .replaceAll('  ', '');

      // ignore: unused_local_variable
      /*RegExp search = RegExp(
          '<article id="post-131" class="post-131 page type-page status-publish hentry">(.*?)</article>');
      Match _matcing = search.firstMatch(_htmlData);
      _htmlData = _matcing.group(1);*/
      debugPrint(_htmlData);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _getHttpData();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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
              ? SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Html(data: _htmlData),
                  ),
                )
              : CircularProgressIndicator()),
    );
  }
}
