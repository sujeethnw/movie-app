// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_tvshows.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildTvshows> _$buildTvshowsSerializer =
    new _$BuildTvshowsSerializer();

class _$BuildTvshowsSerializer implements StructuredSerializer<BuildTvshows> {
  @override
  final Iterable<Type> types = const [BuildTvshows, _$BuildTvshows];
  @override
  final String wireName = 'BuildTvshows';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuildTvshows object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'genreids',
      serializers.serialize(object.genreids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'origin_country',
      serializers.serialize(object.origincountry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.backdroppath;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.originallanguage;
    if (value != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalname;
    if (value != null) {
      result
        ..add('original_name')
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
        ..add('poster_pat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('first_air_data')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vote_average;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vote_count;
    if (value != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.character;
    if (value != null) {
      result
        ..add('character')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creditid;
    if (value != null) {
      result
        ..add('credit_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodecount;
    if (value != null) {
      result
        ..add('episode_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuildTvshows deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildTvshowsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'backdrop_path':
          result.backdroppath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genreids':
          result.genreids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'origin_country':
          result.origincountry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'original_language':
          result.originallanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_name':
          result.originalname = serializers.deserialize(value,
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
        case 'poster_pat':
          result.posterpath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_air_data':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'credit_id':
          result.creditid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episode_count':
          result.episodecount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildTvshows extends BuildTvshows {
  @override
  final bool adult;
  @override
  final String? backdroppath;
  @override
  final BuiltList<int> genreids;
  @override
  final int? id;
  @override
  final BuiltList<String> origincountry;
  @override
  final String? originallanguage;
  @override
  final String? originalname;
  @override
  final String? overview;
  @override
  final int? popularity;
  @override
  final String? posterpath;
  @override
  final int? date;
  @override
  final String? name;
  @override
  final int? vote_average;
  @override
  final int? vote_count;
  @override
  final String? character;
  @override
  final String? creditid;
  @override
  final int? episodecount;

  factory _$BuildTvshows([void Function(BuildTvshowsBuilder)? updates]) =>
      (new BuildTvshowsBuilder()..update(updates))._build();

  _$BuildTvshows._(
      {required this.adult,
      this.backdroppath,
      required this.genreids,
      this.id,
      required this.origincountry,
      this.originallanguage,
      this.originalname,
      this.overview,
      this.popularity,
      this.posterpath,
      this.date,
      this.name,
      this.vote_average,
      this.vote_count,
      this.character,
      this.creditid,
      this.episodecount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'BuildTvshows', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        genreids, r'BuildTvshows', 'genreids');
    BuiltValueNullFieldError.checkNotNull(
        origincountry, r'BuildTvshows', 'origincountry');
  }

  @override
  BuildTvshows rebuild(void Function(BuildTvshowsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildTvshowsBuilder toBuilder() => new BuildTvshowsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildTvshows &&
        adult == other.adult &&
        backdroppath == other.backdroppath &&
        genreids == other.genreids &&
        id == other.id &&
        origincountry == other.origincountry &&
        originallanguage == other.originallanguage &&
        originalname == other.originalname &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterpath == other.posterpath &&
        date == other.date &&
        name == other.name &&
        vote_average == other.vote_average &&
        vote_count == other.vote_count &&
        character == other.character &&
        creditid == other.creditid &&
        episodecount == other.episodecount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdroppath.hashCode);
    _$hash = $jc(_$hash, genreids.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, origincountry.hashCode);
    _$hash = $jc(_$hash, originallanguage.hashCode);
    _$hash = $jc(_$hash, originalname.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterpath.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, vote_average.hashCode);
    _$hash = $jc(_$hash, vote_count.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, creditid.hashCode);
    _$hash = $jc(_$hash, episodecount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuildTvshows')
          ..add('adult', adult)
          ..add('backdroppath', backdroppath)
          ..add('genreids', genreids)
          ..add('id', id)
          ..add('origincountry', origincountry)
          ..add('originallanguage', originallanguage)
          ..add('originalname', originalname)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterpath', posterpath)
          ..add('date', date)
          ..add('name', name)
          ..add('vote_average', vote_average)
          ..add('vote_count', vote_count)
          ..add('character', character)
          ..add('creditid', creditid)
          ..add('episodecount', episodecount))
        .toString();
  }
}

class BuildTvshowsBuilder
    implements Builder<BuildTvshows, BuildTvshowsBuilder> {
  _$BuildTvshows? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdroppath;
  String? get backdroppath => _$this._backdroppath;
  set backdroppath(String? backdroppath) => _$this._backdroppath = backdroppath;

  ListBuilder<int>? _genreids;
  ListBuilder<int> get genreids => _$this._genreids ??= new ListBuilder<int>();
  set genreids(ListBuilder<int>? genreids) => _$this._genreids = genreids;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<String>? _origincountry;
  ListBuilder<String> get origincountry =>
      _$this._origincountry ??= new ListBuilder<String>();
  set origincountry(ListBuilder<String>? origincountry) =>
      _$this._origincountry = origincountry;

  String? _originallanguage;
  String? get originallanguage => _$this._originallanguage;
  set originallanguage(String? originallanguage) =>
      _$this._originallanguage = originallanguage;

  String? _originalname;
  String? get originalname => _$this._originalname;
  set originalname(String? originalname) => _$this._originalname = originalname;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  String? _posterpath;
  String? get posterpath => _$this._posterpath;
  set posterpath(String? posterpath) => _$this._posterpath = posterpath;

  int? _date;
  int? get date => _$this._date;
  set date(int? date) => _$this._date = date;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _vote_average;
  int? get vote_average => _$this._vote_average;
  set vote_average(int? vote_average) => _$this._vote_average = vote_average;

  int? _vote_count;
  int? get vote_count => _$this._vote_count;
  set vote_count(int? vote_count) => _$this._vote_count = vote_count;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _creditid;
  String? get creditid => _$this._creditid;
  set creditid(String? creditid) => _$this._creditid = creditid;

  int? _episodecount;
  int? get episodecount => _$this._episodecount;
  set episodecount(int? episodecount) => _$this._episodecount = episodecount;

  BuildTvshowsBuilder();

  BuildTvshowsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdroppath = $v.backdroppath;
      _genreids = $v.genreids.toBuilder();
      _id = $v.id;
      _origincountry = $v.origincountry.toBuilder();
      _originallanguage = $v.originallanguage;
      _originalname = $v.originalname;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterpath = $v.posterpath;
      _date = $v.date;
      _name = $v.name;
      _vote_average = $v.vote_average;
      _vote_count = $v.vote_count;
      _character = $v.character;
      _creditid = $v.creditid;
      _episodecount = $v.episodecount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildTvshows other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuildTvshows;
  }

  @override
  void update(void Function(BuildTvshowsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuildTvshows build() => _build();

  _$BuildTvshows _build() {
    _$BuildTvshows _$result;
    try {
      _$result = _$v ??
          new _$BuildTvshows._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'BuildTvshows', 'adult'),
              backdroppath: backdroppath,
              genreids: genreids.build(),
              id: id,
              origincountry: origincountry.build(),
              originallanguage: originallanguage,
              originalname: originalname,
              overview: overview,
              popularity: popularity,
              posterpath: posterpath,
              date: date,
              name: name,
              vote_average: vote_average,
              vote_count: vote_count,
              character: character,
              creditid: creditid,
              episodecount: episodecount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreids';
        genreids.build();

        _$failedField = 'origincountry';
        origincountry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuildTvshows', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
