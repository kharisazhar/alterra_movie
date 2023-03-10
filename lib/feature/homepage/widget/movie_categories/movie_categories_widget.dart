import 'package:flutter/material.dart';

import 'movie_category_item.dart';

class MovieCategoriesWidget extends StatelessWidget {
  const MovieCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const MovieCategoryItem();
          }),
    );
  }
}
