import 'package:built_collection/built_collection.dart';
import 'package:movies_app/model/build_movie.dart';
import 'package:movies_app/model/build_tvshows.dart';
import 'package:movies_app/views/cast_detail_screen.dart';
import 'package:movies_app/views/components/movie_details.dart';
import 'package:movies_app/views/movies_name.dart';

abstract class ApiService {
  Future<BuiltList<BuildMovie>> getPopular();

  Future<BuiltList<MovieDetails>> gettopRated();

  Future<BuiltList<MoviesName>> getUpcomingMovie();

  Future<BuiltList<CastDetailScreen>> getCastMovie({required int id});

  Future<BuiltList<MovieDetails>> getMoviesCast({required int id});

  Future<BuiltList<BuildTvshows>> getTvShowsCast({required int id});
}
