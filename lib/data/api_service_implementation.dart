import 'dart:convert';

import 'package:built_collection/src/list.dart';
import 'package:movies_app/core/api_service.dart';
import 'package:movies_app/model/build_cast.dart';
import 'package:movies_app/model/build_movie.dart';
import 'package:movies_app/model/build_tvshows.dart';
import 'package:http/http.dart' as http;

extension on String {
  Uri toUri() => Uri.parse(this);
}

class ApiUrls {
  String get _baseUrl => 'https://api.themoviedb.org/3';

  String get _movieUrl => '$_baseUrl/movie';

  String get _castUrl => '$_baseUrl/person';

  String get popular => '$_movieUrl/popular';

  String get topRated => '$_movieUrl/top_rated';

  String get upcoming => '$_movieUrl/upcoming';

  String _castMovie(int id) => '$_castUrl/$id/movie_credits';

  String _moviesCast(int id) => '$_movieUrl/$id/credits';

  String _castTvShow(int id) => '$_castUrl/$id/tv_credits';
}

class ApiServiceImplementation implements ApiService {
  ApiUrls url = ApiUrls();

  Map<String, String> get defaultHeader =>
      {'Authorization': 'Bearer 89b7237bbcff0fa06e47811bdf0ea123'};

  @override
  Future<BuiltList<BuildCast>> getCastMovie({required int id}) async {
    http.Response response =
        await http.get((url._castMovie(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["cast"] as List;
      List<BuildCast> cast = [];
      for (final i in body) {
        cast.add(BuildCast.fromJson(i));
      }
      return cast.toBuiltList();
    }
    throw 'Failed';
  }

  @override
  Future<BuiltList<BuildMovie>> getMoviesCast({required int id}) async {
    http.Response response =
        await http.get((url._moviesCast(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["cast"] as List;
      List<BuildMovie> moviescast = [];
      for (final i in body) {
        moviescast.add(BuildMovie.fromJson(i));
      }
      return moviescast.toBuiltList();
    }
    throw 'Failed';
  }

  @override
  Future<BuiltList<BuildMovie>> getPopular() async {
    http.Response response =
        await http.get((url.popular).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["results"] as List;
      List<BuildMovie> movies = [];
      for (final i in body) {
        movies.add(BuildMovie.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Failed';
  }

  @override
  Future<BuiltList<BuildMovie>> getTopRated() async {
    http.Response response =
        await http.get((url.topRated).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["results"] as List;
      List<BuildMovie> movies = [];
      for (final i in body) {
        movies.add(BuildMovie.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Failed';
  }

  @override
  Future<BuiltList<BuildTvshows>> getTvShowsCast({required int id}) async {
    http.Response response =
        await http.get((url._castTvShow(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["cast"] as List;
      List<BuildTvshows> movies = [];
      for (final i in body) {
        movies.add(BuildTvshows.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Failed';
  }

  @override
  Future<BuiltList<BuildMovie>> getUpcomingMovies() async {
    http.Response response =
        await http.get((url.upcoming).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["results"] as List;
      List<BuildMovie> movies = [];
      for (final i in body) {
        movies.add(BuildMovie.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Failed';
  }
}
