import 'package:flutter/material.dart';
import './dtos/CustomImage.dart';

class Plan {
  String name;
  List<String> description;
  double price;
  double discountedPrice;
  CustomImage image;

  Plan({
    @required this.name,
    @required this.description,
    @required this.price,
    this.discountedPrice,
    this.image
  });
}
