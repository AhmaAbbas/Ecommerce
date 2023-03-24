import 'package:dartz/dartz.dart';

import '../../core/errors/error.dart';
import '../../domain/base_repository/base_repositoy.dart';
import '../data_source/get_all_products.dart';
import '../model/product_model.dart';

class ProductRepository extends BaseRipository{
  final BaseProductsRemoteDataSource baseProductsRemoteDataSource;
  ProductRepository({required this.baseProductsRemoteDataSource});
  Future<Either<Failure, List<Product>>> getallproducts() async {
    var result=await baseProductsRemoteDataSource.getallproducts();
    return result;
  }

}