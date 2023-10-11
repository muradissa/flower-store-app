

import 'package:flower_store_app/model/product.dart';
import 'package:flutter/material.dart';

class ProductsCart with ChangeNotifier{
  // List <Product> s

  double total = 0 ;
  List productsCart = [];

  addNewProduct(Product item){
    productsCart.add(item);
    total= total +item.price;
    notifyListeners();
  }
  subProduct(Product item){
    productsCart.removeAt(productsCart.indexOf(item));
    total= total -item.price;
    notifyListeners();
  }
}