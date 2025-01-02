import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
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

//to get cast for the movies
  Future<void> getCastMovie(int id) async {
    BuiltList<BuildCast> popular = await apiService.getCastMovie(id: id);
    state = state.rebuild((p0) => p0.CastMovie = popular.toBuilder());
  }

//to get movies for the cast
  Future<void> getMoviesCast(int id) async {
    BuiltList<BuildMovie> popular = await apiService.getMoviesCast(id: id);
    state = state.rebuild((p0) => p0.MoviesCast = popular.toBuilder());
  }

//to get tv show for the cast
  Future<void> getTvShowsCast(int id) async {
    BuiltList<BuildTvshows> popular = await apiService.getTvShowsCast(id: id);
    state = state.rebuild((p0) => p0.TvShowsCast = popular.toBuilder());
  }

  Future<void> getMovieforID(int id) async {
    BuildMovie popular = (await apiService.getMovieforID(id:  id)) ;
    state = state.rebuild((p0) => p0.movieforid = popular.toBuilder());
  }

  Future<void> getCastforId(int id) async {
    BuildCast popular = (await apiService.getCastforId(id:id)) ;
    state = state.rebuild((p0) => p0.castforid = popular.toBuilder() );
  }


}

