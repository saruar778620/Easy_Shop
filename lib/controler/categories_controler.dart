import 'package:flutter/material.dart';
import 'package:shop_easy_app/model/categories_model.dart';

class CategoriesControler {
  List<CategoriesModel> categories = [
    CategoriesModel(
        name: "Fashion",
        icon: Icons.dry_cleaning,
        bgColor: Colors.pink.shade50,
        iconColor: Colors.red
    ),
    CategoriesModel(
        name: "Electronics",
        icon: Icons.headphones_sharp,
        bgColor: Colors.blue.shade50,
        iconColor: Colors.red
    ),
    CategoriesModel(
        name: "Sport",
        icon: Icons.sports_baseball,
        bgColor: Colors.amber.shade50,
        iconColor: Colors.red
    ),
    CategoriesModel(
        name: "Beauty",
        icon: Icons.brush,
        bgColor: Colors.pink.shade50,
        iconColor: Colors.red
    ),
    CategoriesModel(
        name: "Grocery",
        icon: Icons.local_grocery_store,
        bgColor: Colors.green.shade50,
        iconColor: Colors.red
    ),


  ];
}