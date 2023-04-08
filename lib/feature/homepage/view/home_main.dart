import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/movie_list/movie_list_bloc.dart';
import 'home_page.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<MovieListBloc>(
        create: (context) => MovieListBloc()..add(GetMovieList('3')),
      ),

      /// ADD Other Bloc
      /// BlocProvider<FavoriteBloc>(
      ///         create: (context) => FavoriteBloc()..add(GetFavorite()),
      ///       ),
    ], child: const HomePage());
  }
}
