
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/model/serializers.dart';

part 'build_cast.g.dart';
abstract class BuildCast implements Built<BuildCast, BuildCastBuilder> {
  BuildCast._();

  factory BuildCast([void Function(BuildCastBuilder) updates]) = _$BuildCast;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BuildCast.serializer, this)
        as Map<String, dynamic>;
  }

  static BuildCast fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BuildCast.serializer, json)!;
  }

  static Serializer<BuildCast> get serializer => _$buildCastSerializer;

  bool get adult;

  int? get gender;

  int? get id;

  @BuiltValueField(
    wireName: 'known_for_department',
  )
  String? get knownfordepartmnet;

  String? get name;

  @BuiltValueField(
    wireName: 'original_name',
  )
  String? get originalname;

  int? get populartiy;

  @BuiltValueField(
    wireName: 'profile_path',
  )
  String? get profilepath;

  @BuiltValueField(
    wireName: 'cast_id',
  )
  int? get castid;

  String? get character;

  @BuiltValueField(
    wireName: 'credit_id',
  )
  String? get creditid;

  int? get order;
}
