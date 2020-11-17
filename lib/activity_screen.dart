import 'package:flutter/material.dart';
import 'package:hs_afterschool/activity_data.dart';

class ActivityScreen extends StatefulWidget {

  final ActivityData act;

  ActivityScreen(this.act);

  @override
  _ActivityScreenState createState() => _ActivityScreenState(act);
}

class _ActivityScreenState extends State<ActivityScreen> {

  final ActivityData act;

  _ActivityScreenState(this.act);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 52,38,117 ),

        title: Text(act.activity),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Image.network(act.img),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    act.activity,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    act.desc,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    act.day +" "+act.time,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
