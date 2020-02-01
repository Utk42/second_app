import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 172, 238, 100), // for appBar back button
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            // color: Color.fromRGBO(0, 172, 238, 100),
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: OutlineButton(
            color: Colors.lightBlue[900],
            onPressed: () {
              // Navigate back to first route when tapped.
              Navigator.pop(context);
            },
            child: Text(
              'Go back!',
              style: TextStyle(
                //color: Color.fromRGBO(0, 172, 238, 100),
                color: Colors.lightBlue[900],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
