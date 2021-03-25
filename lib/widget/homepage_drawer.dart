import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ABA',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'AKADEMİK BİLİŞİM ARAŞTIRMALARI DERNEĞİ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              leading:
                  CircleAvatar(child: Icon(Icons.insert_drive_file_outlined)),
              title: Text('AJİT-E'),
            ),
            Divider(),
            ListTile(
              leading:
                  CircleAvatar(child: Icon(Icons.insert_drive_file_outlined)),
              title: Text('HABERLER'),
            ),
            Divider(),
            ListTile(
              leading:
                  CircleAvatar(child: Icon(Icons.insert_drive_file_outlined)),
              title: Text('ETKİNLİKLER'),
            ),
            Divider(),
            ExpansionTile(
              leading: Icon(Icons.person),
              title: Text('HAKKIMIZDA'),
              children: [
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.people)),
                  title: Text('Kurucu Üyeler'),
                ),
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.sd)),
                  title: Text('Tüzük'),
                ),
              ],
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.contact_phone)),
              title: Text('İLETİŞİM'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.check)),
              title: Text('ICTC 2018'),
            ),
          ],
        ),
      ),
    );
  }
}
