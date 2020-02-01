import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/notFoundPage.dart';

class MyCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 172, 238, 100),
        ),
        title: Text(
          'My Cars',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Center(
            child: Column(
              children: <Widget>[
                yourCars.length <= 0
                    ? NotFoundPage('No Cars Registered !')
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        alignment: Alignment.center,
                        height: 400.0,
                        child: ListView.builder(
                          itemCount: yourCars.length,
                          itemBuilder: (ctx, index) {
                            return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                color: Color.fromRGBO(0, 172, 238, 100),
                                child: Row(
                                  children: <Widget>[
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child: Image.asset(
                                        'assets/images/carModel.jpeg',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            '${yourCars[index].model}',
                                            style: TextStyle(
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '${yourCars[index].brand}',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '${yourCars[index].fuelType}',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        ),
                      ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      color: Color.fromRGBO(0, 172, 238, 100),
                      highlightColor: Colors.lightBlue[900],
                      child: Text(
                        'Add Car',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                    OutlineButton(
                      color: Colors.orangeAccent[100],
                      onPressed: () {
                        // Navigate back to first route when tapped.
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go back!',
                        style: TextStyle(color: Colors.lightBlue[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
