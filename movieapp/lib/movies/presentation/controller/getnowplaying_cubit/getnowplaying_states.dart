import 'package:movieapp/movies/domain/entities/movie_entity.dart';

class GetNowPlaying_States{}

class GetNowPlaying_InitialStates extends GetNowPlaying_States{}

class GetNowPlaying_LoadingStates extends GetNowPlaying_States{}

class GetNowPlaying_SuccesStates extends GetNowPlaying_States{
  List<Movie> getNowPLayingMovies=[];
  GetNowPlaying_SuccesStates({required this.getNowPLayingMovies});
}

class GetNowPlaying_FailureStates extends GetNowPlaying_States{
  String error;
  GetNowPlaying_FailureStates({required this.error});
}

