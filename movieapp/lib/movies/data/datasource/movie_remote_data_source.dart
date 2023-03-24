import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movieapp/core/utls/constants.dart';
import 'package:movieapp/movies/data/model/movie_model.dart';

import '../../../errors/errors_exceptions.dart';
import '../../domain/entities/movie_entity.dart';
abstract class BaseMovieRemoteDataSource{
  Future<Either<Failure,List<Movie>>> getNowPlaying();
  Future<Either<Failure,List<Movie>>> getPopularMovies();
  Future<Either<Failure,List<Movie>>> getTopRatedMovies();
}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource{
  @override
  Future<Either<Failure,List<Movie>>> getNowPlaying()async{
    final response=await Dio().get(AppConstants.getnowplaying);
    try{
      return Right(List<MovieModel>.from((response.data["results"]as List).map((e) => MovieModel.fromjson(e))));
    } on Exception catch (e){
      if (e is DioError){
        return Left(ServerFaulire.fromDioError(e));
      }
      return Left(ServerFaulire(error: e.toString()));
  }

}

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies()async {
    final response=await Dio().get(AppConstants.getpopularmovies);
    try{
      return Right(List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromjson(e))));
    } on Exception catch(e){
      if (e is DioError)
        {
          return Left(ServerFaulire.fromDioError(e));
        }
      return Left(ServerFaulire(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final response=await Dio().get(AppConstants.getpopularmovies);
    try{
      return Right(List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromjson(e))));
    } on Exception catch(e){
      if (e is DioError)
      {
        return Left(ServerFaulire.fromDioError(e));
      }
      return Left(ServerFaulire(error: e.toString()));
    }
  }
}