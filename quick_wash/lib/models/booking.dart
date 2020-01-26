import 'package:flutter/material.dart';

import './dtos/address.dart';
import './enums/bookingSlot.dart';
import './enums/bookingStatus.dart';

class Booking {
  String id;
  String userId;
  String carId;
  Address address;
  DateTime serviceDate;
  BookingSlot slot; // MORNING, AFTERNOON, EVENING
  BookingStatus status; 
  DateTime bookingTime;

  // Car should have userId & User must have Address

  Booking({
    @required this.id,
    @required this.userId,
    @required this.carId,
    @required this.address,
    @required this.slot,
    @required this.serviceDate,
    @required this.status,
    @required this.bookingTime,
  });
}