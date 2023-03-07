import 'package:flutter/material.dart';

import '../../theme/alta_color.dart';
import 'widget/home_heading_widget.dart';
import 'widget/movie_categories_widget.dart';
import 'widget/search_movie_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 22.0),
      child: Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Categories'),
                  TextButton(
                      style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap)
                          .copyWith(
                              foregroundColor: const MaterialStatePropertyAll(
                                  AltaColor.yellowWaxPepper)),
                      onPressed: () {},
                      child: const Text('View all'))
                ],
              ),

              const SizedBox(height: 8.0),

              /// Categories
              const MovieCategoriesWidget()
            ],
          ),

          /// Latest Movie

          /// Favorite Movie
        ],
      ),
    );
  }
}
