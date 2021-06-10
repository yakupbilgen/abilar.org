import 'package:flutter/material.dart';

import '../helper/process.dart';

class AtaWidget extends InheritedWidget {
  final Process process;

  AtaWidget({Key key, @required Widget child, this.process})
      : super(key: key, child: child);

  static AtaWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
