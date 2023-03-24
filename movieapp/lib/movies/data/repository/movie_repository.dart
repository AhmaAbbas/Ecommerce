import 'package:dartz/dartz.dart';
import 'package:movieapp/errors/errors_exceptions.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movieapp/movies/domain/entities/movie_entity.dart';
import 'package:movieapp/movies/domain/repository/basemovie_repository.dart';

class MovieRepository extends BaseMovie_Repository{
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MovieRepository({required this.baseMovieRemoteDataSource});
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async{
    var result= await baseMovieRemoteDataSource.getNowPlaying();
    return result;
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async{
    var result= await baseMovieRemoteDataSource.getPopularMovies();
    return result;
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    var result= await baseMovieRemoteDataSource.getTopRatedMovies();
    return result;
  }

}