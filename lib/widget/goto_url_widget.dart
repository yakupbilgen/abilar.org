import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future gotoUrlWidget(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    debugPrint('Link açılamıyor');
  }
  return url;
}
