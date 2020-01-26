import 'package:flutter/material.dart';

class MainBusinessSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.tealAccent[100],
      child: Wrap(
        alignment: WrapAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.local_car_wash),
            iconSize: 100,
            color: Colors.brown,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_car_wash),
            iconSize: 100,
            color: Colors.yellowAccent[500],
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_car_wash),
            iconSize: 100,
            color: Colors.redAccent[500],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
