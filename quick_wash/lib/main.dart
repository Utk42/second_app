import 'package:flutter/material.dart';

import './widgets/topbar.dart';
import './widgets/bottomBar.dart';
import './widgets/mainBusinessSpace.dart';
import './widgets/offers.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // for screen's safe-area
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: TopBar(),
              ),
              Flexible(
                flex: 10,
                child: Offers(),
              ),
              Flexible(
                flex: 20,
                child: MainBusinessSpace(),
              ),
              Flexible(
                flex: 10,
                child: BottomBar(),
              ),
              // Container(
              //   color: Colors.greenAccent[50],
              // ),
              // Container(
              //   color: Colors.greenAccent[100],
              // ),
              // Container(
              //   color: Colors.greenAccent[200],
              // ),
              // Container(
              //   color: Colors.greenAccent[],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
