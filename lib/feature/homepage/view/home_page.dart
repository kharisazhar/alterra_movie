import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/movie_list/movie_list_bloc.dart';
import 'widget/content_header_widget.dart';
import 'widget/home_heading_widget.dart';
import 'widget/movie_categories/movie_categories_widget.dart';
import 'widget/movie_poster_item_widget.dart';
import 'widget/search_movie_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            BlocBuilder<MovieListBloc, MovieListState>(
                builder: (context, state) {
              if (state is MovieListInitial) {
                return const SizedBox.shrink();
              } else if (state is MovieListLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is MovieListLoaded) {
                return SizedBox(
                  height: 320,
                  child: ListView.builder(
                      itemCount: state.movieList?.length ?? 0,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 22.0),
                          child: MoviePostItemWidget(
                              movieTitle: state.movieList?[index].title ?? '',
                              posterImageUrl:
                                  state.movieList?[index].posterPath ?? '',
                              onTap: () {
                                /// Push
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(
                                //     builder: (_) => DetailMoviePage(
                                //       movie: MovieModel(),
                                //     ),
                                //   ),
                                // );
                              }),
                        );
                      }),
                );
              } else if (state is MovieListError) {
                return const Center(
                  child: Text('Oops something went wrong...'),
                );
              } else {
                return const SizedBox.shrink();
              }
            }),

            /// Favorite Movie
            ContentHeaderWidget(
              title: 'Favorite Movie',
              onPressed: () {},
            ),

            const SizedBox(height: 18.0),

            // SizedBox(
            //   height: 320,
            //   child: ListView.builder(
            //       itemCount: 10,
            //       scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.only(right: 22.0),
            //           child: MoviePostItemWidget(
            //             movieTitle: '',
            //             posterImageUrl: posterImage,
            //           ),
            //         );
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
