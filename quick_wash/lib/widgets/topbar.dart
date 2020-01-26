import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.account_box, size: 40,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, size: 36,),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
