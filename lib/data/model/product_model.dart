

import '../../domain/entities/productmodel_entity.dart';

class Product extends ProductEntity {
    Product(
      {required super.title,
      required super.description,
      required super.price,
      required super.image,
      required super.rate});
factory Product.fromjson(Map<String, dynamic> json) {
    return Product(
        title: json["title"],
        description: json["description"],
        price: json["price"],
        image: json["image"],
        rate: Rating.fromjson(json["rating"]));
  }
}
