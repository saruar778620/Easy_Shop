import 'package:flutter/material.dart';

class BannerModel {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final IconData icon;



  BannerModel(
      {required this.title, required this.subtitle, required this.backgroundColor, required this.icon,});
}