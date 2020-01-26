import 'package:flutter/material.dart';

import '../pages/myCar.dart';
import '../pages/subscription.dart';
import '../pages/offer.dart';
import '../pages/myBooking.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 2.0),
      color: Colors.tealAccent[700],
      //height: 966.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Flexible(
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.directions_car,
                    size: 36.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCar()),
                    );
                  },
                ),
                Text(
                  'My Cars',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.event_note,
                  size: 36.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyBooking()),
                  );
                },
              ),
              Text(
                'Bookings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.cached,
                  size: 36.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Subscription()),
                  );
                },
              ),
              Text(
                'Subscriptions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
