import 'package:built_collection/built_collection.dart';
import 'package:movies_app/core/api_service.dart';
import 'package:movies_app/data/api_service_implementation.dart';
import 'package:movies_app/model/build_cast.dart';
import 'package:movies_app/model/build_movie.dart';
import 'package:movies_app/model/build_tvshows.dart';
import 'package:state_notifier/state_notifier.dart';

import '../model/build_app_state.dart';

class AppViewModel extends StateNotifier<BuildAppState> {
  AppViewModel() : super(BuildAppState());
  ApiService apiService = ApiServiceImplementation();

  Future<void> getPopular() async {
    BuiltList<BuildMovie> popular = await apiService.getPopular();
    state = state.rebuild((p0) => p0.Popular = popular.toBuilder());
  }

  Future<void> getTopRated() async {
    BuiltList<BuildMovie> popular = await apiService.getTopRated();
    state = state.rebuild((p0) => p0.topRated = popular.toBuilder());
  }

  Future<void> getUpcomingMovies() async {
    BuiltList<BuildMovie> popular = await apiService.getUpcomingMovies();
    state = state.rebuild((p0) => p0.UpcomingMovies = popular.toBuilder());
  }


  Future<void> getCastMovie(int id) async {
    BuiltList<BuildCast> popular = await apiService.getCastMovie(id: id);
    state = state.rebuild((p0) => p0.CastMovie = popular.toBuilder());
  }

  Future<void> getMoviesCast(int id) async {
    BuiltList<BuildMovie> popular = await apiService.getMoviesCast(id: id);
    state = state.rebuild((p0) => p0.MoviesCast = popular.toBuilder());
  }

  Future<void> getTvShowsCast(int id) async {
    BuiltList<BuildTvshows> popular = await apiService.getTvShowsCast(id: id);
    state = state.rebuild((p0) => p0.TvShowsCast = popular.toBuilder());
  }
}
