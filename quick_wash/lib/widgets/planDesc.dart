import 'package:flutter/material.dart';

class PlanDescription extends StatelessWidget {
  final String note; //TODO: description in bolt-points  WIDGET

  PlanDescription(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            Icon(Icons.check_box, color: Colors.green,size: 16,),
            Text(note, style: TextStyle(fontSize: 12),),
          ],
        ),
    );
  }
}
