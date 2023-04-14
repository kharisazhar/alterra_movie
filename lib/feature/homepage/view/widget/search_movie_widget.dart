import 'package:flutter/material.dart';

import '../../../../utils/theme/alta_color.dart';

class SearchMovieWidget extends StatelessWidget {
  const SearchMovieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_sharp),
          fillColor: AltaColor.grey.withOpacity(0.2),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          hintText: 'Search ...'),
    );
  }
}
