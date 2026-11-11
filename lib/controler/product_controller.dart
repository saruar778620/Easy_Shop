import 'package:flutter/material.dart';
import 'package:shop_easy_app/model/product_model.dart';

class ProductController {
  List<ProductModel> products = [
    ProductModel(
      name: "Smart Watch\nPro1",
      orginalPrice: "₹2,999",
      price: "₹4,999",
      discount: "40% OFF",
      image: "assets/Watch.png",
      bgColor: Colors.blue.shade50,),
    ProductModel(
      name: "Smart Watch\nPro2",
      orginalPrice: "₹2,999",
      price: "₹4,999",
      discount: "40% OFF",
      image: "assets/Watch.png",
      bgColor: Colors.blue.shade50,),
    ProductModel(
      name: "Smart Watch\nPro3",
      orginalPrice: "₹2,999",
      price: "₹4,999",
      discount: "40% OFF",
      image: "assets/Watch.png",
      bgColor: Colors.blue.shade50,),
    ProductModel(
      name: "Smart Watch\nPro4",
      orginalPrice: "₹2,999",
      price: "₹4,999",
      discount: "40% OFF",
      image: "assets/Watch.png",
      bgColor: Colors.blue.shade50,)
  ];
}