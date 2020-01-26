import 'package:flutter/material.dart';

 // TODO : google location integration
class Address {
  String houseNumber;
  String societyName;  // or, colonyName
  String streetName;
  String area;         // sub-area of city
  String pincode;
  String locality;     // or, landmark
  String city;
  String state;

  Address({
    @required this.houseNumber,
    @required this.societyName,
    @required this.streetName,
    @required this.area,
    @required this.pincode,
    @required this.locality,
    @required this.city,
    @required this.state,
  });

}