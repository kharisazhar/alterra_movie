import 'dart:async';

import 'package:alterra_movie/feature/homepage/model/movie/movie_list_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/repository/movie_list_repository.dart';

part 'movie_list_event.dart';

part 'movie_list_state.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  MovieListBloc() : super(MovieListInitial()) {
    on<GetMovieList>(_onGetMovieList);
  }

  final MovieListRepositoryImpl _movieListRepository = MovieListRepositoryImpl();

  Future<void> _onGetMovieList(
      GetMovieList event, Emitter<MovieListState> emit) async {
    try {
      emit(MovieListLoading());

      /// From Local
      final movieListResponseLocal =
          await _movieListRepository.getMovieFromJson();

      /// From API
      final movieListResponseAPI =
          await _movieListRepository.getMovieFromAPI(event.page);

      emit(MovieListLoaded(movieListResponseAPI));
    } catch (e) {
      emit(MovieListError(e.toString()));
    }
  }
}
