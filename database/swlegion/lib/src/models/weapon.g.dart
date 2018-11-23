// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Weapon> _$weaponSerializer = new _$WeaponSerializer();

class _$WeaponSerializer implements StructuredSerializer<Weapon> {
  @override
  final Iterable<Type> types = const [Weapon, _$Weapon];
  @override
  final String wireName = 'Weapon';

  @override
  Iterable serialize(Serializers serializers, Weapon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'dice',
      serializers.serialize(object.dice,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(AttackDice), const FullType(int)])),
      'min_range',
      serializers.serialize(object.minRange,
          specifiedType: const FullType(int)),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Keyword)])),
    ];
    if (object.maxRange != null) {
      result
        ..add('max_range')
        ..add(serializers.serialize(object.maxRange,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Weapon deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeaponBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dice':
          result.dice.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(AttackDice),
                const FullType(int)
              ])) as BuiltMap);
          break;
        case 'min_range':
          result.minRange = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'max_range':
          result.maxRange = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Keyword)]))
              as BuiltSet);
          break;
      }
    }

    return result.build();
  }
}

class _$Weapon extends Weapon {
  @override
  final String name;
  @override
  final BuiltMap<AttackDice, int> dice;
  @override
  final int minRange;
  @override
  final int maxRange;
  @override
  final BuiltSet<Keyword> keywords;

  factory _$Weapon([void updates(WeaponBuilder b)]) =>
      (new WeaponBuilder()..update(updates)).build();

  _$Weapon._(
      {this.name, this.dice, this.minRange, this.maxRange, this.keywords})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Weapon', 'name');
    }
    if (dice == null) {
      throw new BuiltValueNullFieldError('Weapon', 'dice');
    }
    if (minRange == null) {
      throw new BuiltValueNullFieldError('Weapon', 'minRange');
    }
    if (keywords == null) {
      throw new BuiltValueNullFieldError('Weapon', 'keywords');
    }
  }

  @override
  Weapon rebuild(void updates(WeaponBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WeaponBuilder toBuilder() => new WeaponBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weapon &&
        name == other.name &&
        dice == other.dice &&
        minRange == other.minRange &&
        maxRange == other.maxRange &&
        keywords == other.keywords;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), dice.hashCode), minRange.hashCode),
            maxRange.hashCode),
        keywords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weapon')
          ..add('name', name)
          ..add('dice', dice)
          ..add('minRange', minRange)
          ..add('maxRange', maxRange)
          ..add('keywords', keywords))
        .toString();
  }
}

class WeaponBuilder implements Builder<Weapon, WeaponBuilder> {
  _$Weapon _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MapBuilder<AttackDice, int> _dice;
  MapBuilder<AttackDice, int> get dice =>
      _$this._dice ??= new MapBuilder<AttackDice, int>();
  set dice(MapBuilder<AttackDice, int> dice) => _$this._dice = dice;

  int _minRange;
  int get minRange => _$this._minRange;
  set minRange(int minRange) => _$this._minRange = minRange;

  int _maxRange;
  int get maxRange => _$this._maxRange;
  set maxRange(int maxRange) => _$this._maxRange = maxRange;

  SetBuilder<Keyword> _keywords;
  SetBuilder<Keyword> get keywords =>
      _$this._keywords ??= new SetBuilder<Keyword>();
  set keywords(SetBuilder<Keyword> keywords) => _$this._keywords = keywords;

  WeaponBuilder();

  WeaponBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _dice = _$v.dice?.toBuilder();
      _minRange = _$v.minRange;
      _maxRange = _$v.maxRange;
      _keywords = _$v.keywords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weapon other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Weapon;
  }

  @override
  void update(void updates(WeaponBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Weapon build() {
    _$Weapon _$result;
    try {
      _$result = _$v ??
          new _$Weapon._(
              name: name,
              dice: dice.build(),
              minRange: minRange,
              maxRange: maxRange,
              keywords: keywords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dice';
        dice.build();

        _$failedField = 'keywords';
        keywords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Weapon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
