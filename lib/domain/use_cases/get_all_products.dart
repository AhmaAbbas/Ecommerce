import 'package:dartz/dartz.dart';

import '../../core/errors/error.dart';
import '../../data/model/product_model.dart';
import '../base_repository/base_repositoy.dart';

class GetAllProducts{
  final BaseRipository baseRipository;
  GetAllProducts({required this.baseRipository});
  Future<Either<Failure,List<Product>>> execute()async {
    return await baseRipository.getallproducts();
  }
}