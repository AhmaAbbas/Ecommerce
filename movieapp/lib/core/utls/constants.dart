class AppConstants{
  static const String baseursl="https:://api.themoviedb.org//3";
  static const String apikey="c3435cfe4DaebD796B9227dB2bf921d9";
  static const String getnowplaying=
      "$baseursl/movie/now_playing?api_key=$apikey";
  static const String getpopularmovies=
      "$baseursl/movie/now_playing?api_key=$apikey";
  static const String gettopratedmovies=
      "$baseursl/movie/now_playing?api_key=$apikey";
  static const String baseimgurl="https://image.tmdb.org/t/p/w500";
  static String imageUrl(String pass)=> "$baseimgurl$pass";

}
//"https:://api.themoviedb.org//3/movie/now_playing?api_key=c3435cfe4DaebD796B9227dB2bf921d9"