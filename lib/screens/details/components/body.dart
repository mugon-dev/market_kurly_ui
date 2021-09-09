import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(product.title ?? ""),
      ),
    );
  }
}
