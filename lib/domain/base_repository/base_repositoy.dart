import 'package:dartz/dartz.dart';


import '../../core/errors/error.dart';
import '../../data/model/product_model.dart';

abstract class BaseRipository{
  Future<Either<Failure,List<Product>>> getallproducts();
}