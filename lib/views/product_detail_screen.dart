import 'package:flutter/material.dart';
import 'package:myshop_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  static const routeName = 'product-detail';
  @override
  Widget build(BuildContext context) {
    final String prodId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct =
        Provider.of<ProductProvider>(context, listen: false).findById(prodId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
