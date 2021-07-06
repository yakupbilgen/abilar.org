import 'package:flutter/material.dart';

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        color: Colors.indigo,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(3),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.indigo,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'DUYURULAR',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Duyuru içeriği',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline6.fontSize,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
