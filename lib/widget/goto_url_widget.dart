import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

Future gotoUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    debugPrint('Link açılamıyor');
  }
  return url;
}
