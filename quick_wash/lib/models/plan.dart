import 'package:flutter/material.dart';

class Plan {
  String name;
  List<String> description;
  double price;
  double discountedPrice;

  Plan({
    @required this.name,
    @required this.description,
    @required this.price,
    this.discountedPrice,
  });
}
