import 'package:flutter/material.dart';

class PlanDescription extends StatelessWidget {
  final String note; //TODO: description in bolt-points  WIDGET

  PlanDescription(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            Icon(Icons.check, color: Colors.green, size: 20,),
            Text(note, style: TextStyle(fontSize: 12),),
          ],
        ),
    );
  }
}
