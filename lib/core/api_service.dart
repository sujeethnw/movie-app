import 'package:built_collection/built_collection.dart';

import '../model/build_cast.dart';
import '../model/build_movie.dart';
import '../model/build_tvshows.dart';

abstract class ApiService {
   Future <BuiltList<BuildMovie>>  getPopular();

 Future< BuiltList<BuildMovie>>  getTopRated();

 Future< BuiltList<BuildMovie>> getUpcomingMovies();

 Future< BuiltList<BuildCast>> getCastMovie({required int id});

 Future< BuiltList<BuildMovie>> getMoviesCast({required int id});

 Future< BuiltList<BuildTvshows>> getTvShowsCast({required int id});
 Future<BuildMovie> getMovieforID({required int id});

 Future<BuildCast> getCastforId({required int id});
}
