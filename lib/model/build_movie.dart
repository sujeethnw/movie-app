import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/model/serializers.dart';


part 'build_movie.g.dart';

abstract class BuildMovie implements Built<BuildMovie, BuildMovieBuilder> {
  BuildMovie._();

  factory BuildMovie([void Function(BuildMovieBuilder) updates]) = _$BuildMovie;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BuildMovie.serializer, this)
        as Map<String, dynamic>;
  }

  static BuildMovie fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BuildMovie.serializer, json)!;
  }

  static Serializer<BuildMovie> get serializer => _$buildMovieSerializer;

  bool? get adult;

  @BuiltValueField(
    wireName: "backdrop_path",
  )
  String? get backdroppath;

  @BuiltValueField(
    wireName: 'genre_ids',
  )
  BuiltList<int>? get genreIds;

  int? get id;

  @BuiltValueField(
    wireName: 'original_language',
  )
  String? get originalanguage;

  @BuiltValueField(
    wireName: 'original_title',
  )
  String? get originaltitle;

  String? get overview;

  int? get popularity;

  @BuiltValueField(
    wireName: 'poster_path',
  )
  String? get posterpath;

  @BuiltValueField(
    wireName: 'release_date',
  )
  int? get releasedate;

  String? get title;

  bool? get video;

  @BuiltValueField(
    wireName: 'vote_average',
  )
  int? get voteaverage;

  @BuiltValueField(
    wireName: 'vote_count',
  )
  int? get votecount;
}
