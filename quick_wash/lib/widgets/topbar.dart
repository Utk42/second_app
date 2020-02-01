import 'package:flutter/material.dart';

import '../pages/notifications.dart';
import '../pages/profile.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.account_box, size: 40,color: Color.fromRGBO(0, 172, 238, 100),),
            onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, size: 36,color: Color.fromRGBO(0, 172, 238, 100),),
            onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notifications()),
                    );
                  },
          ),
        ],
      ),
    );
  }
}
