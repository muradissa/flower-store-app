import 'package:flower_store_app/pages/home.dart';
import 'package:flower_store_app/pages/login.dart';
import 'package:flower_store_app/pages/product_details.dart';
import 'package:flower_store_app/pages/product_details2.dart';
import 'package:flower_store_app/pages/register.dart';
import 'package:flower_store_app/provider/products_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
        create: (context) {return ProductsCart();},
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  Home(),
        )
      );
  }
}
