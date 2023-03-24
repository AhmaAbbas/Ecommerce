import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../core/errors/error.dart';
import '../../core/utls/app_constants.dart';
import '../model/product_model.dart';

abstract class BaseProductsRemoteDataSource{
  Future<Either<Failure,List<Product>>> getallproducts();
}
class ProductsRemoteDataSource extends BaseProductsRemoteDataSource{


  @override
  Future<Either<Failure, List<Product>>> getallproducts() async{
    var response=await Dio().get(AppConstants.url);
     try{
       return Right(List<Product>.from((response.data as List).map((e) => Product.fromjson(e))));
     }on Exception catch (error) {
       if (error is DioError)
         {
           return Left(ServerFaulire.fromDioError(error));
         }
       return Left(ServerFaulire(error: error.toString()));
    }
  }

}