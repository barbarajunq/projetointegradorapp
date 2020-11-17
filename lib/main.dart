import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hs_afterschool/activities_list.dart';

void main() async {
  runApp(MyApp());
  /*
  Firestore.instance.collection("categories").document("o5FDxCn4HEv9gTgcIWM1").collection("items").document().setData(
      {"activity": "Writing Lab",
        "category":"Academic Support",
        "day": "Tuesday, Thursday",
        "time": "3:20 PM",
        "desc": "To support students in English with writing structure,organization, word choice, etc.",
        "audience":"7- 12 Graders",
        "img": "https://firebasestorage.googleapis.com/v0/b/afterschool-e2193.appspot.com/o/writing-828911_1920.jpg?alt=media&token=684b2c38-290c-4374-8847-d1b5ff0b6626"
      }



);*/


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text("High School Activities"),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 52,38,117 ),
        ),
        body: ActivitiesList(),
      ),
    );
  }
}
