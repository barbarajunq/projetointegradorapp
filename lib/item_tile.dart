import 'package:flutter/material.dart';
import 'package:hs_afterschool/activity_data.dart';

import 'activity_screen.dart';

class ItemTile extends StatelessWidget {
  final ActivityData act;

  ItemTile(this.act);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActivityScreen(act)));

      },
      child: Card(
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                child: Image.network(act.img),
              ),

            ),
            Flexible(

              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(act.activity,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,5,5,5),
                    child: Text(act.day),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(act.time),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
