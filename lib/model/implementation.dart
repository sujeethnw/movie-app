import 'dart:convert';

import 'package:built_collection/src/list.dart';

import 'package:movies_app/model/build_cast.dart';

import 'package:movies_app/model/build_movie.dart';

import 'package:movies_app/model/build_tvshows.dart';

import '../core/api_service.dart';
import 'package:http/http.dart' as http;

extension on String {
  Uri toUri() => Uri.parse(this);
}

class APIUrls {
  String get _baseUrl => 'https://api.themoviedb.org/3';

  String get _movieUrl => '$_baseUrl/movie';

  String get _castUrl => '$_baseUrl/person';

  String get Popular => '$_movieUrl/Popular';

  String get topRated => '$_movieUrl/top_rated';

  String get upcoming => '$_movieUrl/top_rated';

  String MoviesCast(int id) => '$_movieUrl/$id/credits';

  String TvShowsCast(int id) => '$_castUrl/$id/tv_credits';

  String CastMovies(int id) => '$_castUrl/$id/movie_credits';
}

abstract class ApiServimpl implements ApiService {
  final APIUrls urls = APIUrls();

  Map<String, String> get defaultHeader => {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4OWI3MjM3YmJjZmYwZmEwNmU0NzgxMWJkZjBlYTEyMyIsIm5iZiI6MTczMDE4MjEyNC41NDY5NjksInN1YiI6IjYxMjMzZjY0ZDY1OTBiMDA1ZDgyNmNkOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.9ypJjMejHuSSD9POiGpF_V7W9yZpExosEKjuoaeDDjc'
      };

  @override
  Future<BuiltList<BuildCast>> getCastMovie({required int id}) async {
    http.Response response;
    response =
        await http.get((urls.CastMovies(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['Cast'] as List;
      List<BuildCast> cast = [];
      for (final i in body) {
        cast.add(BuildCast.fromJson(i));
      }
      return cast.toBuiltList();
    }
    throw 'none';
  }

  @override
  Future<BuiltList<BuildMovie>> getMoviesCast({required int id}) async {
    http.Response response;
    response =
        await http.get((urls.MoviesCast(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['Cast'] as List;
      List<BuildMovie> movie = [];
      for (final i in body) {
        movie.add(BuildMovie.fromJson(i));
      }
      return movie.toBuiltList();
    }
    throw 'none';
  }

  @override
  Future<BuiltList<BuildMovie>> getPopular() async {
    http.Response response;
    response = await http.get((urls.Popular).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['Cast'] as List;
      List<BuildMovie> cast = [];
      for (final i in body) {
        cast.add(BuildMovie.fromJson(i));
      }
      return cast.toBuiltList();
    }
    throw 'none';
  }

  @override
  Future<BuiltList<BuildMovie>> gettopRated() async {
    http.Response response;
    response = await http.get((urls.topRated).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['Cast'] as List;
      List<BuildMovie> m = [];
      for (final i in body) {
        m.add(BuildMovie.fromJson(i));
      }
      return m.toBuiltList();
    }
    throw 'none';
  }

  @override
  Future<BuiltList<BuildTvshows>> getTvShowsCast({required int id}) async {
    http.Response response;
    response =
        await http.get((urls.TvShowsCast(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['Cast'] as List;
      List<BuildTvshows> cast = [];
      for (final i in body) {
        cast.add(BuildTvshows.fromJson(i));
      }
      return cast.toBuiltList();
    }
    throw 'none';
  }
}
