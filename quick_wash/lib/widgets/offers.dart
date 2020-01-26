import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        children: <Widget>[
          Card(
            color: Colors.black,
            child: Text('Offer1'),
          ),
        ],
      ),
    );
  }
}
