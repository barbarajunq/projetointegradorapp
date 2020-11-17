import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hs_afterschool/activity_by_category.dart';

class ActivityTile extends StatelessWidget {

  final DocumentSnapshot snapshot;

  ActivityTile(this.snapshot);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        backgroundImage:  NetworkImage(snapshot.data["icon"]),

      ),
      title: Text(snapshot.data["name"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder:(context)=>ByCategory(snapshot) )
        );

      },
    );
  }
}
