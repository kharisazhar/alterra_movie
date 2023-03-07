import 'package:flutter/material.dart';

class SearchMovieWidget extends StatelessWidget {
  const SearchMovieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search_sharp),
          contentPadding: EdgeInsets.symmetric(vertical: 0.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          hintText: 'Search ...'),
    );
  }
}
