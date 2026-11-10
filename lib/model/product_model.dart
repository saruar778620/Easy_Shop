import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final String orginalPrice;
  final String price;
  final String discount;
  final String image;
  final Color bgColor;

  ProductModel({required this.name, required this.orginalPrice, required this.price, required this.discount, required this.image, required this.bgColor});
}