import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NetworkServices {
  static const String baseUrl = 'api.themoviedb.org';

  final Map<String, String> header = {'Content-Type': 'application/json'};

  Future<http.Response> get(
      {QueryParams? queryParams, required String endpoint}) async {

    queryParams =
        QueryParams(params: {'api_key': 'da2c66905b58cbb6b972e167cd56310f'});

    // final queryParams = {
    //   'api_key': 'da2c66905b58cbb6b972e167cd56310f'
    // };

    var url = Uri.https(baseUrl, endpoint, queryParams.params);
    debugPrint("URL ${url.toString()}");
    var response = await http.get(url, headers: header);
    return response;
  }
}

class QueryParams {
  final Map<String, dynamic>? params;

  QueryParams({this.params});

  QueryParams copyWith({Map<String, dynamic>? params}) =>
      QueryParams(params: params ?? this.params);
}
