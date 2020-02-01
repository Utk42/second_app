import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {

  String message;

  NotFoundPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 8,
                              ),
                              child: Text(
                                message,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/my-icons-collection/png/default2.png',
                              width: 200,
                            ),
                          ],
                        );
  }

}