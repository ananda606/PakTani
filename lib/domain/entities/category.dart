import 'package:equatable/equatable.dart';

class Category extends Equatable {
  Category({required this.id, required this.name});
  final int id;
  final String name;
  @override
  List<Object> get props => [id,name];
}
