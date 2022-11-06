import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/models/product_model.dart';

class ProductResponse extends Equatable {
  final List<ProductModel> productList;
  ProductResponse({required this.productList});
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        productList: List<ProductModel>.from(
          (json["results"] as List)
              .map((x) => ProductModel.fromJson(x))
              .where((element) => element.title != null),
        ),
      );
  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(productList.map((x) => x.toJson())),
      };
  @override
  List<Object> get props => [productList];
}
