import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/movie_model.dart';

class MovieNowPlayingData {
  Future<String> _readJson(String name) async {
    return await rootBundle.loadString('assets/json/$name');
  }

  Future<List<MovieResult>> getMovieJson() async {
    final json = await _readJson('movie_list.json');
    var data = MovieModel.fromJson(jsonDecode(json));
    return data.results;
  }
}
