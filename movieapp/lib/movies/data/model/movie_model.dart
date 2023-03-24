import 'package:movieapp/movies/domain/entities/movie_entity.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genderIds,
      required super.overviewes,
      required super.voteAverage,
      required super.rleaseDate});

  factory MovieModel.fromjson(Map<String, dynamic> json) {
    return MovieModel(
        id: json["id"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        genderIds: List<int>.from(json["gender_ids"].map((e) => e)),
        overviewes: json["overviewe"],
        voteAverage: json["vote_average"],
        rleaseDate: json["release_date"]);
  }

}
