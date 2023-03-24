import 'package:dartz/dartz.dart';
import 'package:movieapp/errors/errors_exceptions.dart';
import 'package:movieapp/movies/domain/entities/movie_entity.dart';

abstract class BaseMovie_Repository{
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure,List<Movie>>> getPopularMovies();

  Future<Either<Failure,List<Movie>>> getTopRatedMovies();
}