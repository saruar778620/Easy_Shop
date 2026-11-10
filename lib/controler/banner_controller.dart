import 'package:flutter/material.dart';
import 'package:shop_easy_app/model/banner_model.dart';

class BannerController {
  int cuttentIndex = 0;
  List<BannerModel> banners = [
    BannerModel(
        title: "New Collection",
        subtitle: "UP to ",
        backgroundColor: Colors.green,
        icon: Icons.shopping_bag,
    ),
    BannerModel(
      title: "Big Summer",
      subtitle: "UP to",
      backgroundColor: Colors.amber,
      icon: Icons.shopping_basket,
    )
  ];
  void updateIndex(int index,){
    cuttentIndex =index;
    updateIndex(index);
  }
}
