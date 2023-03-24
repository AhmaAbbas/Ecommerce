import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/errors/errors_exceptions.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movieapp/movies/data/repository/movie_repository.dart';
import 'package:movieapp/movies/domain/entities/movie_entity.dart';
import 'package:movieapp/movies/domain/repository/basemovie_repository.dart';
import 'package:movieapp/movies/domain/usecase/getnowplaying_usecase.dart';

import 'getnowplaying_states.dart';

class GetNowPlayingCubit extends Cubit<GetNowPlaying_States> {
  final getnowplaying_srvicelocato;
  GetNowPlayingCubit({required this.getnowplaying_srvicelocato}):super(GetNowPlaying_InitialStates());
  Future<void> featchgetnowplayingmovies()async{
    emit(GetNowPlaying_LoadingStates());
    var result=await getnowplaying_srvicelocato.execute();
    result.fold((Failure)  {
      emit(GetNowPlaying_FailureStates(error: Failure.error));
    }, (Movies)  {
      emit(GetNowPlaying_SuccesStates(getNowPLayingMovies: Movies));
    });
  }

}