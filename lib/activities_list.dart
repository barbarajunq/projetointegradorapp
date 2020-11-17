import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hs_afterschool/activity_tyle.dart';

class ActivitiesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("categories").orderBy("name").getDocuments(),
      builder: (context, snapshot){
        if (!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else{
          var dividedTiles = ListTile.divideTiles(tiles: snapshot.data.documents.map(
                  (doc){
                return ActivityTile(doc);

              }
          ).toList(),
          color: Colors.grey[500]).toList();
          return ListView(
            children:dividedTiles,
          );
        }

      },
    );
  }
}
