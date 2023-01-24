class ProductModel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final List<String> imageUrls;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrls,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        imageUrls: json['image_urls']);
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": imageUrls,
      };
  ProductModel toEntity() {
    return ProductModel(
      id: this.id,
      title: this.title,
      price: this.price,
      description: this.description,
      category: this.category,
      imageUrls: this.imageUrls,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        price,
        description,
        category,
        imageUrls,
      ];
}
