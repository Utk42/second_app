import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     // width: double.infinity,
    //  height: 100,
    color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          ),
        ),
        child: Row(
          children: <Widget>[
            Card(
              elevation: 20,
              color: Colors.black,
              child: Text('Offer1'),
            ),
          ],
        ),
      ),
    );
  }
}
