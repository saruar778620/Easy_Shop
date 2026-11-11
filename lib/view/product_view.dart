import 'package:flutter/material.dart';
import 'package:shop_easy_app/controler/product_controller.dart';
import 'package:shop_easy_app/view/product_details_view.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final ProductController _productController = ProductController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3,left: 18,right: 14),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Product",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                TextButton(
                    onPressed: (){},
                    child: Text("View All >",style: TextStyle(color: Colors.blue.shade500),))
              ],
            ),
          SizedBox(height: 5,),
          GridView.builder(
            itemCount: _productController.products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.3
              ),
              itemBuilder: (context,index){
                final products = _productController.products[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsView(
                          product: products,
                        ),
                      ),
                    );
                  },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade200),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 5,
                          spreadRadius: 2
                        )]
                      ),
                      child: Row(
                        children: [
                          Hero(
                            tag: products.name,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 140,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: products.bgColor
                              ),
                                child: Image.asset(products.image,)
                            ),
                          ),
                          SizedBox(width: 4,),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(products.name, style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),),
                                SizedBox(height: 4,),

                                Row(
                                  children: [
                                    Text(products.orginalPrice, style: TextStyle(
                                      fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),),
                                    SizedBox(width: 4,),
                                    Text(products.price, style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                        color: Colors.grey.shade500),)
                                  ],
                                ),

                                SizedBox(height: 13,),
                                Container(
                                  height: 28,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.pink.shade50
                                  ),
                                  child: Center(child: Text("43% OFF",
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                                        color: Colors.redAccent),)),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ),

                );
              })
        ],
      ),
    );

  }
}
