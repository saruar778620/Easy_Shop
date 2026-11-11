import 'package:flutter/material.dart';
import 'package:shop_easy_app/model/categories_model.dart';

class CategoriesPageView extends StatefulWidget {
  final CategoriesModel category;

  const CategoriesPageView({super.key, required this.category});

  @override
  State<CategoriesPageView> createState() => _CategoriesPageViewState();
}

class _CategoriesPageViewState extends State<CategoriesPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        backgroundColor: widget.category.bgColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ),
        ],
      )
    );
  }
}
