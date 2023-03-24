import 'package:get_it/get_it.dart';

import '../../data/data_source/get_all_products.dart';
import '../../data/repository/product_repository.dart';
import '../../domain/use_cases/get_all_products.dart';


final getIt = GetIt.instance;
void setup(){
  getIt.registerSingleton<GetAllProducts>(
    GetAllProducts(baseRipository: ProductRepository(baseProductsRemoteDataSource: ProductsRemoteDataSource()))
  );

}