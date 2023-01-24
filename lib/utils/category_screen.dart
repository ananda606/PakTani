import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'product.dart';
import 'products.dart';
import 'cart_appbar_action.dart';

enum Filters { popular, recent, sale }

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({required this.category, Key? key}) : super(key: key);
  final Category category;

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Category get category => widget.category;
  Filters filterValue = Filters.popular;
  String? selection;
  late List<Product> _products;
  

  @override
  void initState() {
    //selection = category.selections.first;
  //  _products = products.where((p) => p.category == category).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   /* List<ProductRow> productRows = category.selections
        .map((s) => ProductRow(
              productType: s,
              products: _products
                  .where((p) => p.productType.toLowerCase() == s.toLowerCase())
                  .toList(),
            ))
        .toList();*/
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      //  title: Text(category.title),
        actions: const [
          CartAppBarAction(),
        ],
      ),/*
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 18),
        itemCount: 12 ,
        itemBuilder: (_, index) => productRows[index],
        separatorBuilder: (_, index) => const SizedBox(
          height: 18,
        ),
      ),*/
    );
  }
}
