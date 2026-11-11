import 'package:flutter/material.dart';
import 'package:shop_easy_app/model/product_model.dart';

class ProductDetailsView extends StatefulWidget {
  final ProductModel product;

  const ProductDetailsView({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsView> createState() =>
      _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Column(
        children: [
          Hero(
            tag: widget.product.name,
            child: Container(
              width: double.infinity,
              height: 250,
              color: widget.product.bgColor,
                child: Image.asset(widget.product.image),

            ),
          ),

        ],
      )
    );
  }
}

