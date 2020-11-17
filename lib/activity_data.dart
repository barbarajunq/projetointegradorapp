import 'package:cloud_firestore/cloud_firestore.dart';

class ActivityData{
  String id;
  String activity;
  String category;
  String day;
  String time;
  String desc;
  String img;

ActivityData.fromDocument(DocumentSnapshot snapshot){
  id = snapshot.documentID;
  activity = snapshot.data["activity"];
  category = snapshot.data['category'];
  day = snapshot.data['day'];
  time =  snapshot.data['time'];
  desc = snapshot.data['desc'];
  img = snapshot.data['img'];
}

}