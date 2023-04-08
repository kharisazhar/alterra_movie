import 'dart:convert';

import 'package:alterra_movie/core/network/api_endpoint.dart';
import 'package:alterra_movie/core/network/network_services.dart';
import 'package:alterra_movie/feature/homepage/model/movie/Movie_list_model.dart';
import 'package:alterra_movie/feature/homepage/model/movie/movie_list_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MovieListRepository {
  Future<String> _readJson(String name) async {
    return await rootBundle.loadString('assets/json/$name');
  }

  Future<List<MovieListResults>?> getMovieFromJson() async {
    try {
      final json = await _readJson('movie_list.json');
      var data = MovieListModel.fromJson(jsonDecode(json));
      return data.results;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<MovieListResults>?> getMovieFromAPI(String page) async {
    try {
      final response = await NetworkServices().get(
        queryParams: QueryParams().copyWith(
          params: {'page': page},
        ),
        endpoint: ApiEndpoint.movieNowPlaying,
      );

      final MovieListModel movieData =
          MovieListModel.fromJson(jsonDecode(response.body));

      debugPrint('getMovieFromAPI ${movieData.results?[0].title}');

      return movieData.results;
    } catch (e) {
      return <MovieListResults>[];
    }
  }
}

/// Future<> getMovieFromDB() {}}
