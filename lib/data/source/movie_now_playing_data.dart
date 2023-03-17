import '../model/movie_model.dart';

class MovieNowPlayingData {
  List<String> movieNowPlaying2 = ["Thor & Thunder"];

  List<MovieModel> movieNowPlayingData = [
    MovieModel(
      id: 1,
      movieTitle: 'Knock at the Cabin',
      moviePoster:
          'https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg',
      voteAverage: 6.5,
      movieOverview:
          'While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.',
    ),
    MovieModel(
      id: 2,
      movieTitle: 'Ant-Man and the Wasp: Quantumania',
      moviePoster:
          'https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg',
      voteAverage: 6.5,
      movieOverview:
          "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.",
    ),
    // MovieModel(
    //   id: 1,
    //   movieTitle: 'Knock at the Cabin',
    //   moviePoster:
    //       'https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg',
    //   voteAverage: 6.5,
    //   movieOverview:
    //       'While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.',
    // )
  ];
}
