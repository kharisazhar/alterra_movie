import 'package:alterra_movie/core/database/database_helper.dart';
import 'package:alterra_movie/data/model/movie_model.dart';
import 'package:alterra_movie/data/source/movie_now_playing_data.dart';
import 'package:alterra_movie/feature/detail/detail_movie_page.dart';
import 'package:alterra_movie/feature/homepage/widget/movie_poster_item_widget.dart';
import 'package:flutter/material.dart';

import 'widget/content_header_widget.dart';
import 'widget/home_heading_widget.dart';
import 'widget/movie_categories/movie_categories_widget.dart';
import 'widget/search_movie_widget.dart';

class HomePage extends StatefulWidget with WidgetsBindingObserver {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dataMovie = MovieNowPlayingData().movieNowPlayingData;

  List<MovieModel> favoriteListMovie = [];

  @override
  void initState() {
    super.initState();
    getMovieListDB();

  }

  void getMovieListDB() async {
    favoriteListMovie = await DatabaseHelper().getMovieList();
    /// TODO
    // await DatabaseHelper().getMovie(1).then((value) {
    //   value.forEach((element) {
    //     debugPrint("element.movieTitle ${element.movieTitle}");
    //   });
    // });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 22.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Heading
            const HomeHeadingWidget(),

            const SizedBox(height: 32.0),

            /// Search bar
            const SearchMovieWidget(),

            const SizedBox(height: 22.0),

            /// Category
            Column(
              children: [
                /// Content Header Widget Categories
                ContentHeaderWidget(
                  title: 'Categories',
                  onPressed: () {},
                ),

                const SizedBox(height: 18.0),

                /// Categories
                const MovieCategoriesWidget()
              ],
            ),

            const SizedBox(height: 22.0),

            /// Latest Movie
            ContentHeaderWidget(
              title: 'Latest Movie',
              onPressed: () {},
            ),

            const SizedBox(height: 18.0),

            /// Movie Poster
            SizedBox(
              height: 320,
              child: ListView.builder(
                  itemCount: dataMovie.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: MoviePostItemWidget(
                          movieTitle: dataMovie[index].movieTitle,
                          posterImageUrl: dataMovie[index].moviePoster,
                          onTap: () {
                            /// Push
                            Navigator.of(context)
                                .push(
                              MaterialPageRoute(
                                builder: (_) => DetailMoviePage(
                                  movie: dataMovie[index],
                                ),
                              ),
                            )
                                .then((value) {
                              getMovieListDB();
                              setState(() {});
                            });

                            /// PushReplacement
                            // Navigator.of(context).pushReplacement(MaterialPageRoute(
                            //     builder: (_) => DetailMoviePage(
                            //           imagePoster: posterImage,
                            //         ))),
                          }),
                    );
                  }),
            ),

            /// Favorite Movie
            ContentHeaderWidget(
              title: 'Favorite Movie',
              onPressed: () {},
            ),

            const SizedBox(height: 18.0),

            SizedBox(
              height: 320,
              child: ListView.builder(
                  itemCount: favoriteListMovie.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: MoviePostItemWidget(
                        movieTitle: favoriteListMovie[index].movieTitle,
                        posterImageUrl: favoriteListMovie[index].moviePoster,
                        onTap: () {
                          /// Push
                          Navigator.of(context)
                              .push(
                            MaterialPageRoute(
                              builder: (_) => DetailMoviePage(
                                movie: dataMovie[index],
                              ),
                            ),
                          )
                              .then((value) {
                            getMovieListDB();
                            setState(() {});
                          });
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
