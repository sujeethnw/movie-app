import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/model/serializers.dart';


part 'build_tvshows.g.dart';

abstract class BuildTvshows
    implements Built<BuildTvshows, BuildTvshowsBuilder> {
  BuildTvshows._();

  factory BuildTvshows([void Function(BuildTvshowsBuilder) updates]) =
      _$BuildTvshows;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BuildTvshows.serializer, this)
        as Map<String, dynamic>;
  }

  static BuildTvshows fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BuildTvshows.serializer, json)!;
  }

  static Serializer<BuildTvshows> get serializer => _$buildTvshowsSerializer;

  bool? get adult;

  @BuiltValueField(
    wireName: 'backdrop_path',
  )
  String? get backdroppath;

  BuiltList<int>? get genreids;

  int? get id;

  @BuiltValueField(
    wireName: 'origin_country',
  )
  BuiltList<String> get origincountry;

  @BuiltValueField(
    wireName: 'original_language',
  )
  String? get originallanguage;

  @BuiltValueField(
    wireName: 'original_name',
  )
  String? get originalname;

  String? get overview;

  int? get popularity;

  @BuiltValueField(
    wireName: 'poster_pat',
  )
  String? get posterpath;

  @BuiltValueField(
    wireName: 'first_air_data',
  )
  int? get date;

  String? get name;

  int? get vote_average;

  int? get vote_count;

  String? get character;

  @BuiltValueField(
    wireName: 'credit_id',
  )
  String? get creditid;

  @BuiltValueField(
    wireName: 'episode_count',
  )
  int? get episodecount;
}
