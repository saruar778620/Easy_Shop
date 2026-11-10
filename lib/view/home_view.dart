import 'package:flutter/material.dart';
import 'package:shop_easy_app/view/banner_view.dart';
import 'package:shop_easy_app/view/categories_view.dart';
import 'package:shop_easy_app/view/product_view.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shop Easy",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 10),
              child: Image.asset("assets/user.png"),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      labelText: "Search for products...",
                      prefixIcon: Icon(Icons.search_rounded)
                    ),

                  ),
                ),
                Container(
                    child: BannerView()
                ),
                SizedBox(height: 3,),
                CategoriesView(),
                ProductView()
              ],
            ),
          ),
        ),
      ),

    );
  }
}
