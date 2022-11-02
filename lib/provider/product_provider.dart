import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _productList = [];
  List<Product> get productList => _productList;
}
