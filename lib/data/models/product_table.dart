import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/data/models/product_model.dart';

class ProductTable extends Equatable {
  final int id;
  final String? name;
  ProductTable({
    required this.id,
    required this.name,
  });
  factory ProductTable.fromEntity(ProductModel product) =>
      ProductTable(id: product.id, name: product.title);
  /* 
  factory MovieTable.fromEntity(MovieDetail movie) => MovieTable(
        id: movie.id,
        title: movie.title,
        posterPath: movie.posterPath,
        overview: movie.overview,
      );

  factory MovieTable.fromMap(Map<String, dynamic> map) => MovieTable(
        id: map['id'],
        title: map['title'],
        posterPath: map['posterPath'],
        overview: map['overview'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'posterPath': posterPath,
        'overview': overview,
      };
*/
  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
