import 'package:flutter/material.dart';

import '../color/color.dart';

class FoundingMembersWidget extends StatelessWidget {
  final String name;

  const FoundingMembersWidget({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      color: themaColor,
      child: Container(
        height: deviceHeight * 0.2,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(1, 20, 1, 1),
        child: Center(
          child: Text(name),
        ),
      ),
    );
  }
}
