import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/model/serializers.dart';

import 'build_cast.dart';
import 'build_movie.dart';
import 'build_tvshows.dart';

part 'build_app_state.g.dart';

abstract class BuildAppState
    implements Built<BuildAppState, BuildAppStateBuilder> {


  BuildAppState._();

  factory BuildAppState(
      [void Function(BuildAppStateBuilder) updates]) = _$BuildAppState;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BuildAppState.serializer, this) as Map<
        String,
        dynamic>;
  }

  static BuildAppState fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BuildAppState.serializer, json)!;
  }

  static Serializer<BuildAppState> get serializer => _$buildAppStateSerializer;

  BuiltList<BuildMovie>? get topRated;

  BuiltList<BuildMovie>? get UpcomingMovies;

  BuiltList<BuildCast>? get CastMovie;

  BuiltList<BuildMovie>? get MoviesCast;

  BuiltList<BuildTvshows>? get TvShowsCast;

  BuiltList<BuildMovie> get Popular;
}