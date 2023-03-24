import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/core/utls/services/services_Locator.dart';
import 'package:movieapp/movies/domain/usecase/getnowplaying_usecase.dart';
import 'package:movieapp/movies/presentation/controller/getnowplaying_cubit/getnowplaying_cubit.dart';
import 'package:movieapp/movies/presentation/screens/component/get_now_playing.dart';
import 'package:movieapp/movies/presentation/screens/component/get_top_ratedmovie.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/utls/constants.dart';
import '../../data/datasource/dummy.dart';
import 'component/get_popular_movie.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>GetNowPlayingCubit(getnowplaying_srvicelocato: getit.get<GetNowPlaying>())..featchgetnowplayingmovies(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             GetNowPlayingBody(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO POPULAR SCREEN
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text('See More'),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GetPopularBody(),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  16.0,
                  24.0,
                  16.0,
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO Top Rated Movies Screen
                      },
                      child:const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children:  [
                            Text('See More'),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GetTopRatedMovieBody(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
