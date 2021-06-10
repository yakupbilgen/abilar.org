import 'package:flutter/material.dart';

import '../widget/founding_members_widget.dart';

List<String> foundingMemberList = [
  'Özhan TİNGÖY',
  'Yusuf BUDAK',
  'Ali ÖZCAN',
  'Nalan TİNGÖY',
  'İhsan KARLI',
  'Necmiye TİNGÖY',
  'Aşkın DEMİRAĞ'
];

class FoundingMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kurucu Üyeler'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: foundingMemberList.length,
          itemBuilder: (BuildContext context, int index) {
            return FoundingMembersWidget(
              name: foundingMemberList[index],
            );
          },
        ),
      ),
    );
  }
}
