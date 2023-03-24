import 'package:dartz/dartz.dart';
import 'package:movieapp/movies/domain/entities/movie_entity.dart';
import 'package:movieapp/movies/domain/repository/basemovie_repository.dart';

import '../../../errors/errors_exceptions.dart';

class GetTopRatedMovies{
  final BaseMovie_Repository baseMovie_Repository;
  GetTopRatedMovies({required this.baseMovie_Repository});

  Future<Either<Failure,List<Movie>>> execute()async{
    return await baseMovie_Repository.getTopRatedMovies();
  }
}