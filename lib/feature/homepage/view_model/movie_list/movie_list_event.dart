part of 'movie_list_bloc.dart';

@immutable
abstract class MovieListEvent {}

class GetMovieList extends MovieListEvent {
  final String page;

  GetMovieList(this.page);
}
