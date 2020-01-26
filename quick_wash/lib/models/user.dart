import 'package:flutter/material.dart';

import './dtos/address.dart';

class User {
  String id;
  String firstName;
  String lastName;
  String phoneNumber;  // Signup is done via phoneNumber
  String email;    // optional : either phoneNumber or email is present; check when signup mail is enabled
  Address address;
  String imageUrl; // optional

  User({
    @required this.id,
    @required this.firstName,
    @required this.lastName,
    @required this.phoneNumber,
    @required this.address,
    this.imageUrl,
    this.email,
  });  

}