import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/enums/bookingStatus.dart';
import '../widgets/notFoundPage.dart';

class MyBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 172, 238, 100),
        ),
        title: Text(
          'My Bookings',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  myBookings.length <= 0
                      ? NotFoundPage('No Bookings !')
                      : Container(
                          height: 400,
                          child: ListView.builder(
                            itemCount: myBookings.length,
                            itemBuilder: (ctx, index) {
                              return Card(
                                elevation: 10.0,
                                color: myBookings[index].status ==
                                        BookingStatus.SERVED
                                    ? Colors.greenAccent[100]
                                    : Colors.brown[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10))),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                        'Booking Id : ${myBookings[index].id}'),
                                    Text(
                                        'Service Date : ${myBookings[index].serviceDate}'),
                                    Text(
                                        'Slot Booked : ${myBookings[index].slot}'),
                                    Text(
                                      '${myBookings[index].bookingTime}',
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.grey),
                                    ),
                                    myBookings[index].status !=
                                            BookingStatus.SERVED
                                        ? FlatButton(
                                            color: Colors.blueAccent[100],
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            onPressed: () {},
                                          )
                                        : SizedBox(
                                            height: 1.0,
                                          ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      color: Color.fromRGBO(0, 172, 238, 100),
                      highlightColor: Colors.lightBlue[900],
                      child: Text(
                        'Book with Us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OutlineButton(
                      onPressed: () {
                        // Navigate back to first route when tapped.
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go back!',
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
