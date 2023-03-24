

import '../../../data/model/product_model.dart';

class ProductsState{}
class Initial_productState extends ProductsState{}

class Loading_productState extends ProductsState{}

class Failure_productState extends ProductsState{
  String error;
  Failure_productState({required this.error});
}

class Succes_productState extends ProductsState{
  List<Product> products;
  Succes_productState({required this.products});
}