import 'package:flutter_application_1/data/models/product_model.dart';

class ShopModel {
  String shop_name;
  List<ProductModel>? product_list;
  String location;

  ShopModel(
      {required this.shop_name, this.product_list, required this.location});
}
