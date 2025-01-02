// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildAppState> _$buildAppStateSerializer =
    new _$BuildAppStateSerializer();

class _$BuildAppStateSerializer implements StructuredSerializer<BuildAppState> {
  @override
  final Iterable<Type> types = const [BuildAppState, _$BuildAppState];
  @override
  final String wireName = 'BuildAppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuildAppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Popular',
      serializers.serialize(object.Popular,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuildMovie)])),
    ];
    Object? value;
    value = object.topRated;
    if (value != null) {
      result
        ..add('topRated')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuildMovie)])));
    }
    value = object.UpcomingMovies;
    if (value != null) {
      result
        ..add('UpcomingMovies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuildMovie)])));
    }
    value = object.CastMovie;
    if (value != null) {
      result
        ..add('CastMovie')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuildCast)])));
    }
    value = object.MoviesCast;
    if (value != null) {
      result
        ..add('MoviesCast')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BuildMovie)])));
    }
    value = object.TvShowsCast;
    if (value != null) {
      result
        ..add('TvShowsCast')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BuildTvshows)])));
    }
    value = object.movieforid;
    if (value != null) {
      result
        ..add('movieforid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuildMovie)));
    }
    value = object.castforid;
    if (value != null) {
      result
        ..add('castforid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuildCast)));
    }
    return result;
  }

  @override
  BuildAppState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildAppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topRated':
          result.topRated.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuildMovie)]))!
              as BuiltList<Object?>);
          break;
        case 'UpcomingMovies':
          result.UpcomingMovies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuildMovie)]))!
              as BuiltList<Object?>);
          break;
        case 'CastMovie':
          result.CastMovie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuildCast)]))!
              as BuiltList<Object?>);
          break;
        case 'MoviesCast':
          result.MoviesCast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuildMovie)]))!
              as BuiltList<Object?>);
          break;
        case 'TvShowsCast':
          result.TvShowsCast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuildTvshows)]))!
              as BuiltList<Object?>);
          break;
        case 'Popular':
          result.Popular.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuildMovie)]))!
              as BuiltList<Object?>);
          break;
        case 'movieforid':
          result.movieforid.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuildMovie))! as BuildMovie);
          break;
        case 'castforid':
          result.castforid.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuildCast))! as BuildCast);
          break;
      }
    }

    return result.build();
  }
}

class _$BuildAppState extends BuildAppState {
  @override
  final BuiltList<BuildMovie>? topRated;
  @override
  final BuiltList<BuildMovie>? UpcomingMovies;
  @override
  final BuiltList<BuildCast>? CastMovie;
  @override
  final BuiltList<BuildMovie>? MoviesCast;
  @override
  final BuiltList<BuildTvshows>? TvShowsCast;
  @override
  final BuiltList<BuildMovie> Popular;
  @override
  final BuildMovie? movieforid;
  @override
  final BuildCast? castforid;

  factory _$BuildAppState([void Function(BuildAppStateBuilder)? updates]) =>
      (new BuildAppStateBuilder()..update(updates))._build();

  _$BuildAppState._(
      {this.topRated,
      this.UpcomingMovies,
      this.CastMovie,
      this.MoviesCast,
      this.TvShowsCast,
      required this.Popular,
      this.movieforid,
      this.castforid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(Popular, r'BuildAppState', 'Popular');
  }

  @override
  BuildAppState rebuild(void Function(BuildAppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildAppStateBuilder toBuilder() => new BuildAppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildAppState &&
        topRated == other.topRated &&
        UpcomingMovies == other.UpcomingMovies &&
        CastMovie == other.CastMovie &&
        MoviesCast == other.MoviesCast &&
        TvShowsCast == other.TvShowsCast &&
        Popular == other.Popular &&
        movieforid == other.movieforid &&
        castforid == other.castforid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topRated.hashCode);
    _$hash = $jc(_$hash, UpcomingMovies.hashCode);
    _$hash = $jc(_$hash, CastMovie.hashCode);
    _$hash = $jc(_$hash, MoviesCast.hashCode);
    _$hash = $jc(_$hash, TvShowsCast.hashCode);
    _$hash = $jc(_$hash, Popular.hashCode);
    _$hash = $jc(_$hash, movieforid.hashCode);
    _$hash = $jc(_$hash, castforid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuildAppState')
          ..add('topRated', topRated)
          ..add('UpcomingMovies', UpcomingMovies)
          ..add('CastMovie', CastMovie)
          ..add('MoviesCast', MoviesCast)
          ..add('TvShowsCast', TvShowsCast)
          ..add('Popular', Popular)
          ..add('movieforid', movieforid)
          ..add('castforid', castforid))
        .toString();
  }
}

class BuildAppStateBuilder
    implements Builder<BuildAppState, BuildAppStateBuilder> {
  _$BuildAppState? _$v;

  ListBuilder<BuildMovie>? _topRated;
  ListBuilder<BuildMovie> get topRated =>
      _$this._topRated ??= new ListBuilder<BuildMovie>();
  set topRated(ListBuilder<BuildMovie>? topRated) =>
      _$this._topRated = topRated;

  ListBuilder<BuildMovie>? _UpcomingMovies;
  ListBuilder<BuildMovie> get UpcomingMovies =>
      _$this._UpcomingMovies ??= new ListBuilder<BuildMovie>();
  set UpcomingMovies(ListBuilder<BuildMovie>? UpcomingMovies) =>
      _$this._UpcomingMovies = UpcomingMovies;

  ListBuilder<BuildCast>? _CastMovie;
  ListBuilder<BuildCast> get CastMovie =>
      _$this._CastMovie ??= new ListBuilder<BuildCast>();
  set CastMovie(ListBuilder<BuildCast>? CastMovie) =>
      _$this._CastMovie = CastMovie;

  ListBuilder<BuildMovie>? _MoviesCast;
  ListBuilder<BuildMovie> get MoviesCast =>
      _$this._MoviesCast ??= new ListBuilder<BuildMovie>();
  set MoviesCast(ListBuilder<BuildMovie>? MoviesCast) =>
      _$this._MoviesCast = MoviesCast;

  ListBuilder<BuildTvshows>? _TvShowsCast;
  ListBuilder<BuildTvshows> get TvShowsCast =>
      _$this._TvShowsCast ??= new ListBuilder<BuildTvshows>();
  set TvShowsCast(ListBuilder<BuildTvshows>? TvShowsCast) =>
      _$this._TvShowsCast = TvShowsCast;

  ListBuilder<BuildMovie>? _Popular;
  ListBuilder<BuildMovie> get Popular =>
      _$this._Popular ??= new ListBuilder<BuildMovie>();
  set Popular(ListBuilder<BuildMovie>? Popular) => _$this._Popular = Popular;

  BuildMovieBuilder? _movieforid;
  BuildMovieBuilder get movieforid =>
      _$this._movieforid ??= new BuildMovieBuilder();
  set movieforid(BuildMovieBuilder? movieforid) =>
      _$this._movieforid = movieforid;

  BuildCastBuilder? _castforid;
  BuildCastBuilder get castforid =>
      _$this._castforid ??= new BuildCastBuilder();
  set castforid(BuildCastBuilder? castforid) => _$this._castforid = castforid;

  BuildAppStateBuilder();

  BuildAppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topRated = $v.topRated?.toBuilder();
      _UpcomingMovies = $v.UpcomingMovies?.toBuilder();
      _CastMovie = $v.CastMovie?.toBuilder();
      _MoviesCast = $v.MoviesCast?.toBuilder();
      _TvShowsCast = $v.TvShowsCast?.toBuilder();
      _Popular = $v.Popular.toBuilder();
      _movieforid = $v.movieforid?.toBuilder();
      _castforid = $v.castforid?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildAppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuildAppState;
  }

  @override
  void update(void Function(BuildAppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuildAppState build() => _build();

  _$BuildAppState _build() {
    _$BuildAppState _$result;
    try {
      _$result = _$v ??
          new _$BuildAppState._(
              topRated: _topRated?.build(),
              UpcomingMovies: _UpcomingMovies?.build(),
              CastMovie: _CastMovie?.build(),
              MoviesCast: _MoviesCast?.build(),
              TvShowsCast: _TvShowsCast?.build(),
              Popular: Popular.build(),
              movieforid: _movieforid?.build(),
              castforid: _castforid?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topRated';
        _topRated?.build();
        _$failedField = 'UpcomingMovies';
        _UpcomingMovies?.build();
        _$failedField = 'CastMovie';
        _CastMovie?.build();
        _$failedField = 'MoviesCast';
        _MoviesCast?.build();
        _$failedField = 'TvShowsCast';
        _TvShowsCast?.build();
        _$failedField = 'Popular';
        Popular.build();
        _$failedField = 'movieforid';
        _movieforid?.build();
        _$failedField = 'castforid';
        _castforid?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuildAppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
