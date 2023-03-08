import 'package:alterra_movie/feature/homepage/widget/movie_poster_item_widget.dart';
import 'package:flutter/material.dart';

import 'widget/content_header_widget.dart';
import 'widget/home_heading_widget.dart';
import 'widget/movie_categories_widget.dart';
import 'widget/search_movie_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String posterImage =
      "https://images.unsplash.com/photo-1596727147705-61a532a659bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80";

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
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: MoviePostItemWidget(posterImageUrl: posterImage),
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
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: MoviePostItemWidget(posterImageUrl: posterImage),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
