import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hs_afterschool/activity_data.dart';
import 'package:hs_afterschool/activity_tyle.dart';

import 'item_tile.dart';
class ByCategory extends StatelessWidget {

  final DocumentSnapshot snapshot;

  ByCategory(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(snapshot.data['name']),
        backgroundColor: Color.fromARGB(255, 52,38,117 ),
      ),
      body:FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection("categories").document(snapshot.documentID).collection('items').orderBy("activity").getDocuments(),
        builder:(context, snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return ListView.builder(
              padding: EdgeInsets.all(4),
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index){
                  return ItemTile(ActivityData.fromDocument(snapshot.data.documents[index]));
                });

          }
        }
      ),
    );
  }
}
