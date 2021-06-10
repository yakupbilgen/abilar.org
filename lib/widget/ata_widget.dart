import 'package:flutter/material.dart';

class AtaWidget extends InheritedWidget {
  final String head = "This is a head";
  final String afterMath;

  AtaWidget({Key key, @required Widget child, this.afterMath})
      : super(key: key, child: child);

  static AtaWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
