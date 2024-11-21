// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_cast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildCast> _$buildCastSerializer = new _$BuildCastSerializer();

class _$BuildCastSerializer implements StructuredSerializer<BuildCast> {
  @override
  final Iterable<Type> types = const [BuildCast, _$BuildCast];
  @override
  final String wireName = 'BuildCast';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuildCast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.knownfordepartmnet;
    if (value != null) {
      result
        ..add('known_for_department')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.populartiy;
    if (value != null) {
      result
        ..add('populartiy')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profilepath;
    if (value != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.castid;
    if (value != null) {
      result
        ..add('cast_id')
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
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuildCast deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildCastBuilder();

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
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'known_for_department':
          result.knownfordepartmnet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_name':
          result.originalname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'populartiy':
          result.populartiy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'profile_path':
          result.profilepath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cast_id':
          result.castid = serializers.deserialize(value,
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
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildCast extends BuildCast {
  @override
  final bool adult;
  @override
  final int? gender;
  @override
  final int? id;
  @override
  final String? knownfordepartmnet;
  @override
  final String? name;
  @override
  final String? originalname;
  @override
  final int? populartiy;
  @override
  final String? profilepath;
  @override
  final int? castid;
  @override
  final String? character;
  @override
  final String? creditid;
  @override
  final int? order;

  factory _$BuildCast([void Function(BuildCastBuilder)? updates]) =>
      (new BuildCastBuilder()..update(updates))._build();

  _$BuildCast._(
      {required this.adult,
      this.gender,
      this.id,
      this.knownfordepartmnet,
      this.name,
      this.originalname,
      this.populartiy,
      this.profilepath,
      this.castid,
      this.character,
      this.creditid,
      this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'BuildCast', 'adult');
  }

  @override
  BuildCast rebuild(void Function(BuildCastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildCastBuilder toBuilder() => new BuildCastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildCast &&
        adult == other.adult &&
        gender == other.gender &&
        id == other.id &&
        knownfordepartmnet == other.knownfordepartmnet &&
        name == other.name &&
        originalname == other.originalname &&
        populartiy == other.populartiy &&
        profilepath == other.profilepath &&
        castid == other.castid &&
        character == other.character &&
        creditid == other.creditid &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, knownfordepartmnet.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, originalname.hashCode);
    _$hash = $jc(_$hash, populartiy.hashCode);
    _$hash = $jc(_$hash, profilepath.hashCode);
    _$hash = $jc(_$hash, castid.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, creditid.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuildCast')
          ..add('adult', adult)
          ..add('gender', gender)
          ..add('id', id)
          ..add('knownfordepartmnet', knownfordepartmnet)
          ..add('name', name)
          ..add('originalname', originalname)
          ..add('populartiy', populartiy)
          ..add('profilepath', profilepath)
          ..add('castid', castid)
          ..add('character', character)
          ..add('creditid', creditid)
          ..add('order', order))
        .toString();
  }
}

class BuildCastBuilder implements Builder<BuildCast, BuildCastBuilder> {
  _$BuildCast? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _knownfordepartmnet;
  String? get knownfordepartmnet => _$this._knownfordepartmnet;
  set knownfordepartmnet(String? knownfordepartmnet) =>
      _$this._knownfordepartmnet = knownfordepartmnet;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _originalname;
  String? get originalname => _$this._originalname;
  set originalname(String? originalname) => _$this._originalname = originalname;

  int? _populartiy;
  int? get populartiy => _$this._populartiy;
  set populartiy(int? populartiy) => _$this._populartiy = populartiy;

  String? _profilepath;
  String? get profilepath => _$this._profilepath;
  set profilepath(String? profilepath) => _$this._profilepath = profilepath;

  int? _castid;
  int? get castid => _$this._castid;
  set castid(int? castid) => _$this._castid = castid;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _creditid;
  String? get creditid => _$this._creditid;
  set creditid(String? creditid) => _$this._creditid = creditid;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  BuildCastBuilder();

  BuildCastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _gender = $v.gender;
      _id = $v.id;
      _knownfordepartmnet = $v.knownfordepartmnet;
      _name = $v.name;
      _originalname = $v.originalname;
      _populartiy = $v.populartiy;
      _profilepath = $v.profilepath;
      _castid = $v.castid;
      _character = $v.character;
      _creditid = $v.creditid;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildCast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuildCast;
  }

  @override
  void update(void Function(BuildCastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuildCast build() => _build();

  _$BuildCast _build() {
    final _$result = _$v ??
        new _$BuildCast._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, r'BuildCast', 'adult'),
            gender: gender,
            id: id,
            knownfordepartmnet: knownfordepartmnet,
            name: name,
            originalname: originalname,
            populartiy: populartiy,
            profilepath: profilepath,
            castid: castid,
            character: character,
            creditid: creditid,
            order: order);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
