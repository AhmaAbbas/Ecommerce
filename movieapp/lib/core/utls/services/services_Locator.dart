import 'package:get_it/get_it.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movieapp/movies/data/repository/movie_repository.dart';
import 'package:movieapp/movies/domain/repository/basemovie_repository.dart';
import 'package:movieapp/movies/domain/usecase/getnowplaying_usecase.dart';

final getit=GetIt.instance;
void setup(){
  getit.registerSingleton<GetNowPlaying>(
      GetNowPlaying(baseMovie_Repository:getit()));
  getit.registerSingleton<BaseMovie_Repository>(MovieRepository(baseMovieRemoteDataSource: MovieRemoteDataSource()));
}