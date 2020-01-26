import 'package:flutter/material.dart';

import './plans.dart';

class MainBusinessSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.infinity,
      color: Colors.tealAccent[100],
      child: Plans(),
    );
  }
}
