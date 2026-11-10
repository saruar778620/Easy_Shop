import 'package:flutter/material.dart';
import 'package:shop_easy_app/controler/categories_controler.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  final CategoriesControler _categoriesControler = CategoriesControler();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 8.5),
           child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         ),
          SizedBox(height: 1,),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Column(
              children: [
               SizedBox(
                 height: 110,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: _categoriesControler.categories.length,
                     itemBuilder: (context,index){
                     final category = _categoriesControler.categories[index];
                     return Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: GestureDetector(
                             onTap: (){},
                             child: Container(
                               height: 75,
                               width: 75,
                               decoration: BoxDecoration(
                                 color: category.bgColor,
                                 borderRadius: BorderRadius.circular(10)
                               ),
                               child: Icon(category.icon,size: 37,),
                             ),
                           ),
                         ),
                         Text(category.name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                       ],
                     );
                     }
                 ),
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}
