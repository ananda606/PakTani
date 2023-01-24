import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _productList = [];
  List<ProductModel> get productList => _productList;
}
