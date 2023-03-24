
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/screens/controller/products/products_states.dart';

import '../../../data/data_source/get_all_products.dart';
import '../../../data/repository/product_repository.dart';
import '../../../domain/use_cases/get_all_products.dart';

class ProductCubit extends Cubit<ProductsState>{
  ProductCubit():super(Initial_productState());
  Future<void> featchproductmodel()async{
    emit(Loading_productState());
    var result = await GetAllProducts(
        baseRipository: ProductRepository(
        baseProductsRemoteDataSource: ProductsRemoteDataSource())).execute();
    result.fold((failure) {
      emit(Failure_productState(error: failure.error));
    }, (products) {
      emit(Succes_productState(products: products));
      print(products);
    });
  }


}