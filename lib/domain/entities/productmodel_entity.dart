import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable{
  String title;
  String description;
  num price;
  String image;
  Rating rate;

  ProductEntity(
      {
        required this.title, required this.description, required this.price, required this.image, required this.rate});

  @override
  // TODO: implement props
  List<Object?> get props => [
    title,
    description,
    price,
    image,
    rate,
  ];
}
class Rating extends Equatable{
  num rate;
  num count;
  Rating({
    required this.count,
    required this.rate});
  factory Rating.fromjson(Map<String,dynamic> json){
    return Rating(count: json["count"], rate: json["rate"]);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [rate,count,];
}