import 'package:abilar/helper/model.dart';
import 'package:http/http.dart' as http;

abstract class Process {
  List<SlaytModel> slayts;
  Future request();
  String getData;
}

class ProcessInfo implements Process {
  Uri _url = Uri.parse('https://abilar.org/blog/');

  @override
  List<SlaytModel> slayts = [];

  @override
  String get getData => throw UnimplementedError();

  @override
  set getData(String _getData) {}

  @override
  Future request() async {
    await http.get(_url).then((snapshot) {
      getData = snapshot.body
          .replaceAll('\n', '')
          .replaceAll('\t', '')
          .replaceAll('  ', '');
      print(getData);
    });
  }
}
