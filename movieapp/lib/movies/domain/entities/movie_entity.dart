import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final num id;
  final String title;
  final String backdropPath;
  final List<num> genderIds;
  final String overviewes;
  final num voteAverage;
  final String rleaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genderIds,
    required this.overviewes,
    required this.voteAverage,
    required this.rleaseDate
  });

  @override
  List<Object> get props =>
      [id,
        title,
        backdropPath,
        genderIds,
        overviewes,
        voteAverage,
        rleaseDate,
      ];


}