part of 'movie_list_bloc.dart';

@immutable
abstract class MovieListState {}

class MovieListInitial extends MovieListState {}

class MovieListLoaded extends MovieListState {
  final List<MovieListResults>? movieList;

  MovieListLoaded(this.movieList);
}

class MovieListLoading extends MovieListState {}

class MovieListError extends MovieListState {
  final String error;

  MovieListError(this.error);
}
