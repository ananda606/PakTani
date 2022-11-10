import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/utils/ecommerce_template.dart';
import 'package:provider/provider.dart';

class CartProvider with ChangeNotifier {
  List<OrderItem> itemsInCart = [];
  double get totalCost {
    double total = 0;
    for (var item in itemsInCart) {
      total += item.product.cost;
    }
    return total;
  }

  void add(OrderItem orderItem) {
    itemsInCart.add(orderItem);
    notifyListeners();
  }

  void remove(OrderItem orderItem) {
    itemsInCart.remove(orderItem);
    notifyListeners();
  }
}
