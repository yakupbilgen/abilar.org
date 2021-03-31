import 'package:abilar/widget/goto_url.dart';
import 'package:flutter/material.dart';

import '/color/color.dart';

class HomePageDrawer extends StatelessWidget {
  final String urlICTC = 'https://abilar.org/ictc/';
  final String urlAjite = 'https://ajit-e.org/';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('assets/images/abaustlogo.png'),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                      leading: Icon(Icons.insert_drive_file_outlined),
                      title: Text('AJİT-E'),
                      onTap: () {
                        Navigator.pop(context);
                        gotoUrl(urlAjite);
                      }),
                  Divider(color: dividerColor),
                  ListTile(
                    leading: Icon(Icons.airplay),
                    title: Text('HABERLER'),
                  ),
                  Divider(color: dividerColor),
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text('ETKİNLİKLER'),
                  ),
                  Divider(color: dividerColor),
                  ExpansionTile(
                    leading: Icon(Icons.person),
                    title: Text('HAKKIMIZDA'),
                    children: [
                      ListTile(
                        leading: Icon(Icons.people),
                        title: Text('Kurucu Üyeler'),
                      ),
                      ListTile(
                        leading: Icon(Icons.sd),
                        title: Text('Tüzük'),
                      ),
                    ],
                  ),
                  Divider(color: dividerColor),
                  ListTile(
                    leading: Icon(Icons.contact_phone),
                    title: Text('İLETİŞİM'),
                  ),
                  Divider(color: dividerColor),
                  ListTile(
                    leading: Icon(Icons.grain),
                    title: Text('ICTC 2018'),
                    onTap: () {
                      Navigator.pop(context);
                      gotoUrl(urlICTC);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
