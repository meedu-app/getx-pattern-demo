import 'package:meta/meta.dart' show required;

class Movie {
  Movie({
    @required this.posterPath,
    @required this.adult,
    @required this.overview,
    @required this.releaseDate,
    @required this.genreIds,
    @required this.id,
    @required this.originalTitle,
    @required this.originalLanguage,
    @required this.title,
    @required this.backdropPath,
    @required this.popularity,
    @required this.voteCount,
    @required this.video,
    @required this.voteAverage,
  });

  final String posterPath;
  final bool adult;
  final String overview;
  final DateTime releaseDate;
  final List<int> genreIds;
  final int id;
  final String originalTitle;
  final String originalLanguage;
  final String title;
  final String backdropPath;
  final double popularity;
  final int voteCount;
  final bool video;
  final double voteAverage;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        posterPath: json["poster_path"],
        adult: json["adult"],
        overview: json["overview"],
        releaseDate: DateTime.parse(json["release_date"]),
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalTitle: json["original_title"],
        originalLanguage: json["original_language"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        popularity: json["popularity"].toDouble(),
        voteCount: json["vote_count"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "poster_path": posterPath,
        "adult": adult,
        "overview": overview,
        "release_date":
            "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "original_title": originalTitle,
        "original_language": originalLanguage,
        "title": title,
        "backdrop_path": backdropPath,
        "popularity": popularity,
        "vote_count": voteCount,
        "video": video,
        "vote_average": voteAverage,
      };
}
