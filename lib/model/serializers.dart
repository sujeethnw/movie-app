import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'build_cast.dart';
import 'build_movie.dart';
import 'build_tvshows.dart';


part 'serializers.g.dart';

@SerializersFor(<Type>[
  BuildCast,
  BuildMovie,
  BuildTvshows,
])
final Serializers serializers=
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();