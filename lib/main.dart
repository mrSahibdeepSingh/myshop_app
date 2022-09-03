import 'package:flutter/material.dart';
import 'package:myshop_app/providers/product_provider.dart';
import 'package:myshop_app/views/home_screen.dart';
import 'package:myshop_app/views/product_detail_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        title: 'My Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.deepOrange)),
        home: HomeScreen(),
        routes: {ProductDetail.routeName: (ctx) => const ProductDetail()},
      ),
    );
  }
}
