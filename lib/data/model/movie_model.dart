class MovieModel {
  final int id;
  final String movieTitle;
  final String moviePoster;
  final double voteAverage;
  final String movieOverview;

  MovieModel({
    required this.id,
    required this.movieTitle,
    required this.moviePoster,
    required this.voteAverage,
    required this.movieOverview,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        movieTitle: json["movieTitle"],
        moviePoster: json["moviePoster"],
        voteAverage: json["voteAverage"]?.toDouble(),
        movieOverview: json["movieOverview"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "movieTitle": movieTitle,
        "moviePoster": moviePoster,
        "voteAverage": voteAverage,
        "movieOverview": movieOverview,
      };
}
