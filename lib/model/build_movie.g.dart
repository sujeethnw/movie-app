// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_movie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildMovie> _$buildMovieSerializer = new _$BuildMovieSerializer();

class _$BuildMovieSerializer implements StructuredSerializer<BuildMovie> {
  @override
  final Iterable<Type> types = const [BuildMovie, _$BuildMovie];
  @override
  final String wireName = 'BuildMovie';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuildMovie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.adult;
    if (value != null) {
      result
        ..add('adult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.backdroppath;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genreIds;
    if (value != null) {
      result
        ..add('genre_ids')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.originalanguage;
    if (value != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originaltitle;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.posterpath;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.releasedate;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.voteaverage;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.votecount;
    if (value != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuildMovie deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildMovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'backdrop_path':
          result.backdroppath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'original_language':
          result.originalanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_title':
          result.originaltitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'poster_path':
          result.posterpath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'release_date':
          result.releasedate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'vote_average':
          result.voteaverage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vote_count':
          result.votecount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildMovie extends BuildMovie {
  @override
  final bool? adult;
  @override
  final String? backdroppath;
  @override
  final BuiltList<int>? genreIds;
  @override
  final int? id;
  @override
  final String? originalanguage;
  @override
  final String? originaltitle;
  @override
  final String? overview;
  @override
  final int? popularity;
  @override
  final String? posterpath;
  @override
  final int? releasedate;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final int? voteaverage;
  @override
  final int? votecount;

  factory _$BuildMovie([void Function(BuildMovieBuilder)? updates]) =>
      (new BuildMovieBuilder()..update(updates))._build();

  _$BuildMovie._(
      {this.adult,
      this.backdroppath,
      this.genreIds,
      this.id,
      this.originalanguage,
      this.originaltitle,
      this.overview,
      this.popularity,
      this.posterpath,
      this.releasedate,
      this.title,
      this.video,
      this.voteaverage,
      this.votecount})
      : super._();

  @override
  BuildMovie rebuild(void Function(BuildMovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildMovieBuilder toBuilder() => new BuildMovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildMovie &&
        adult == other.adult &&
        backdroppath == other.backdroppath &&
        genreIds == other.genreIds &&
        id == other.id &&
        originalanguage == other.originalanguage &&
        originaltitle == other.originaltitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterpath == other.posterpath &&
        releasedate == other.releasedate &&
        title == other.title &&
        video == other.video &&
        voteaverage == other.voteaverage &&
        votecount == other.votecount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdroppath.hashCode);
    _$hash = $jc(_$hash, genreIds.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalanguage.hashCode);
    _$hash = $jc(_$hash, originaltitle.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterpath.hashCode);
    _$hash = $jc(_$hash, releasedate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, voteaverage.hashCode);
    _$hash = $jc(_$hash, votecount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuildMovie')
          ..add('adult', adult)
          ..add('backdroppath', backdroppath)
          ..add('genreIds', genreIds)
          ..add('id', id)
          ..add('originalanguage', originalanguage)
          ..add('originaltitle', originaltitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterpath', posterpath)
          ..add('releasedate', releasedate)
          ..add('title', title)
          ..add('video', video)
          ..add('voteaverage', voteaverage)
          ..add('votecount', votecount))
        .toString();
  }
}

class BuildMovieBuilder implements Builder<BuildMovie, BuildMovieBuilder> {
  _$BuildMovie? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdroppath;
  String? get backdroppath => _$this._backdroppath;
  set backdroppath(String? backdroppath) => _$this._backdroppath = backdroppath;

  ListBuilder<int>? _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int>? genreIds) => _$this._genreIds = genreIds;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalanguage;
  String? get originalanguage => _$this._originalanguage;
  set originalanguage(String? originalanguage) =>
      _$this._originalanguage = originalanguage;

  String? _originaltitle;
  String? get originaltitle => _$this._originaltitle;
  set originaltitle(String? originaltitle) =>
      _$this._originaltitle = originaltitle;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  String? _posterpath;
  String? get posterpath => _$this._posterpath;
  set posterpath(String? posterpath) => _$this._posterpath = posterpath;

  int? _releasedate;
  int? get releasedate => _$this._releasedate;
  set releasedate(int? releasedate) => _$this._releasedate = releasedate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  int? _voteaverage;
  int? get voteaverage => _$this._voteaverage;
  set voteaverage(int? voteaverage) => _$this._voteaverage = voteaverage;

  int? _votecount;
  int? get votecount => _$this._votecount;
  set votecount(int? votecount) => _$this._votecount = votecount;

  BuildMovieBuilder();

  BuildMovieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdroppath = $v.backdroppath;
      _genreIds = $v.genreIds?.toBuilder();
      _id = $v.id;
      _originalanguage = $v.originalanguage;
      _originaltitle = $v.originaltitle;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterpath = $v.posterpath;
      _releasedate = $v.releasedate;
      _title = $v.title;
      _video = $v.video;
      _voteaverage = $v.voteaverage;
      _votecount = $v.votecount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildMovie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuildMovie;
  }

  @override
  void update(void Function(BuildMovieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuildMovie build() => _build();

  _$BuildMovie _build() {
    _$BuildMovie _$result;
    try {
      _$result = _$v ??
          new _$BuildMovie._(
              adult: adult,
              backdroppath: backdroppath,
              genreIds: _genreIds?.build(),
              id: id,
              originalanguage: originalanguage,
              originaltitle: originaltitle,
              overview: overview,
              popularity: popularity,
              posterpath: posterpath,
              releasedate: releasedate,
              title: title,
              video: video,
              voteaverage: voteaverage,
              votecount: votecount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreIds';
        _genreIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuildMovie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
