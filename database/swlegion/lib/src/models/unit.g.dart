// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

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

Serializer<Unit> _$unitSerializer = new _$UnitSerializer();

class _$UnitSerializer implements StructuredSerializer<Unit> {
  @override
  final Iterable<Type> types = const [Unit, _$Unit];
  @override
  final String wireName = 'Unit';

  @override
  Iterable serialize(Serializers serializers, Unit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'is_unique',
      serializers.serialize(object.isUnique,
          specifiedType: const FullType(bool)),
      'faction',
      serializers.serialize(object.faction,
          specifiedType: const FullType(Faction)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(UnitType)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(Rank)),
      'miniatures',
      serializers.serialize(object.miniatures,
          specifiedType: const FullType(int)),
      'wounds',
      serializers.serialize(object.wounds, specifiedType: const FullType(int)),
      'defence',
      serializers.serialize(object.defence,
          specifiedType: const FullType(DefenceDice)),
      'defenceSurge',
      serializers.serialize(object.defenceSurge,
          specifiedType: const FullType(bool)),
      'speed',
      serializers.serialize(object.speed, specifiedType: const FullType(int)),
      'upgrade_slots',
      serializers.serialize(object.upgradeSlots,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(UpgradeSlot), const FullType(int)])),
      'weapons',
      serializers.serialize(object.weapons,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Weapon)])),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Keyword)])),
    ];
    if (object.subTitle != null) {
      result
        ..add('sub_title')
        ..add(serializers.serialize(object.subTitle,
            specifiedType: const FullType(String)));
    }
    if (object.courage != null) {
      result
        ..add('courage')
        ..add(serializers.serialize(object.courage,
            specifiedType: const FullType(int)));
    }
    if (object.resilience != null) {
      result
        ..add('resilience')
        ..add(serializers.serialize(object.resilience,
            specifiedType: const FullType(int)));
    }
    if (object.attackSurge != null) {
      result
        ..add('attack_surge')
        ..add(serializers.serialize(object.attackSurge,
            specifiedType: const FullType(AttackSurge)));
    }

    return result;
  }

  @override
  Unit deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnitBuilder();

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
        case 'is_unique':
          result.isUnique = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sub_title':
          result.subTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'faction':
          result.faction = serializers.deserialize(value,
              specifiedType: const FullType(Faction)) as Faction;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(UnitType)) as UnitType;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(Rank)) as Rank;
          break;
        case 'miniatures':
          result.miniatures = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wounds':
          result.wounds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'courage':
          result.courage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'resilience':
          result.resilience = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'defence':
          result.defence = serializers.deserialize(value,
              specifiedType: const FullType(DefenceDice)) as DefenceDice;
          break;
        case 'attack_surge':
          result.attackSurge = serializers.deserialize(value,
              specifiedType: const FullType(AttackSurge)) as AttackSurge;
          break;
        case 'defenceSurge':
          result.defenceSurge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'upgrade_slots':
          result.upgradeSlots.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(UpgradeSlot),
                const FullType(int)
              ])) as BuiltMap);
          break;
        case 'weapons':
          result.weapons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Weapon)]))
              as BuiltSet);
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

class _$Unit extends Unit {
  @override
  final String name;
  @override
  final bool isUnique;
  @override
  final String subTitle;
  @override
  final Faction faction;
  @override
  final UnitType type;
  @override
  final int points;
  @override
  final Rank rank;
  @override
  final int miniatures;
  @override
  final int wounds;
  @override
  final int courage;
  @override
  final int resilience;
  @override
  final DefenceDice defence;
  @override
  final AttackSurge attackSurge;
  @override
  final bool defenceSurge;
  @override
  final int speed;
  @override
  final BuiltMap<UpgradeSlot, int> upgradeSlots;
  @override
  final BuiltSet<Weapon> weapons;
  @override
  final BuiltSet<Keyword> keywords;

  factory _$Unit([void updates(UnitBuilder b)]) =>
      (new UnitBuilder()..update(updates)).build();

  _$Unit._(
      {this.name,
      this.isUnique,
      this.subTitle,
      this.faction,
      this.type,
      this.points,
      this.rank,
      this.miniatures,
      this.wounds,
      this.courage,
      this.resilience,
      this.defence,
      this.attackSurge,
      this.defenceSurge,
      this.speed,
      this.upgradeSlots,
      this.weapons,
      this.keywords})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Unit', 'name');
    }
    if (isUnique == null) {
      throw new BuiltValueNullFieldError('Unit', 'isUnique');
    }
    if (faction == null) {
      throw new BuiltValueNullFieldError('Unit', 'faction');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Unit', 'type');
    }
    if (points == null) {
      throw new BuiltValueNullFieldError('Unit', 'points');
    }
    if (rank == null) {
      throw new BuiltValueNullFieldError('Unit', 'rank');
    }
    if (miniatures == null) {
      throw new BuiltValueNullFieldError('Unit', 'miniatures');
    }
    if (wounds == null) {
      throw new BuiltValueNullFieldError('Unit', 'wounds');
    }
    if (defence == null) {
      throw new BuiltValueNullFieldError('Unit', 'defence');
    }
    if (defenceSurge == null) {
      throw new BuiltValueNullFieldError('Unit', 'defenceSurge');
    }
    if (speed == null) {
      throw new BuiltValueNullFieldError('Unit', 'speed');
    }
    if (upgradeSlots == null) {
      throw new BuiltValueNullFieldError('Unit', 'upgradeSlots');
    }
    if (weapons == null) {
      throw new BuiltValueNullFieldError('Unit', 'weapons');
    }
    if (keywords == null) {
      throw new BuiltValueNullFieldError('Unit', 'keywords');
    }
  }

  @override
  Unit rebuild(void updates(UnitBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UnitBuilder toBuilder() => new UnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Unit &&
        name == other.name &&
        isUnique == other.isUnique &&
        subTitle == other.subTitle &&
        faction == other.faction &&
        type == other.type &&
        points == other.points &&
        rank == other.rank &&
        miniatures == other.miniatures &&
        wounds == other.wounds &&
        courage == other.courage &&
        resilience == other.resilience &&
        defence == other.defence &&
        attackSurge == other.attackSurge &&
        defenceSurge == other.defenceSurge &&
        speed == other.speed &&
        upgradeSlots == other.upgradeSlots &&
        weapons == other.weapons &&
        keywords == other.keywords;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            name
                                                                                .hashCode),
                                                                        isUnique
                                                                            .hashCode),
                                                                    subTitle
                                                                        .hashCode),
                                                                faction
                                                                    .hashCode),
                                                            type.hashCode),
                                                        points.hashCode),
                                                    rank.hashCode),
                                                miniatures.hashCode),
                                            wounds.hashCode),
                                        courage.hashCode),
                                    resilience.hashCode),
                                defence.hashCode),
                            attackSurge.hashCode),
                        defenceSurge.hashCode),
                    speed.hashCode),
                upgradeSlots.hashCode),
            weapons.hashCode),
        keywords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Unit')
          ..add('name', name)
          ..add('isUnique', isUnique)
          ..add('subTitle', subTitle)
          ..add('faction', faction)
          ..add('type', type)
          ..add('points', points)
          ..add('rank', rank)
          ..add('miniatures', miniatures)
          ..add('wounds', wounds)
          ..add('courage', courage)
          ..add('resilience', resilience)
          ..add('defence', defence)
          ..add('attackSurge', attackSurge)
          ..add('defenceSurge', defenceSurge)
          ..add('speed', speed)
          ..add('upgradeSlots', upgradeSlots)
          ..add('weapons', weapons)
          ..add('keywords', keywords))
        .toString();
  }
}

class UnitBuilder implements Builder<Unit, UnitBuilder> {
  _$Unit _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isUnique;
  bool get isUnique => _$this._isUnique;
  set isUnique(bool isUnique) => _$this._isUnique = isUnique;

  String _subTitle;
  String get subTitle => _$this._subTitle;
  set subTitle(String subTitle) => _$this._subTitle = subTitle;

  Faction _faction;
  Faction get faction => _$this._faction;
  set faction(Faction faction) => _$this._faction = faction;

  UnitType _type;
  UnitType get type => _$this._type;
  set type(UnitType type) => _$this._type = type;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  Rank _rank;
  Rank get rank => _$this._rank;
  set rank(Rank rank) => _$this._rank = rank;

  int _miniatures;
  int get miniatures => _$this._miniatures;
  set miniatures(int miniatures) => _$this._miniatures = miniatures;

  int _wounds;
  int get wounds => _$this._wounds;
  set wounds(int wounds) => _$this._wounds = wounds;

  int _courage;
  int get courage => _$this._courage;
  set courage(int courage) => _$this._courage = courage;

  int _resilience;
  int get resilience => _$this._resilience;
  set resilience(int resilience) => _$this._resilience = resilience;

  DefenceDice _defence;
  DefenceDice get defence => _$this._defence;
  set defence(DefenceDice defence) => _$this._defence = defence;

  AttackSurge _attackSurge;
  AttackSurge get attackSurge => _$this._attackSurge;
  set attackSurge(AttackSurge attackSurge) => _$this._attackSurge = attackSurge;

  bool _defenceSurge;
  bool get defenceSurge => _$this._defenceSurge;
  set defenceSurge(bool defenceSurge) => _$this._defenceSurge = defenceSurge;

  int _speed;
  int get speed => _$this._speed;
  set speed(int speed) => _$this._speed = speed;

  MapBuilder<UpgradeSlot, int> _upgradeSlots;
  MapBuilder<UpgradeSlot, int> get upgradeSlots =>
      _$this._upgradeSlots ??= new MapBuilder<UpgradeSlot, int>();
  set upgradeSlots(MapBuilder<UpgradeSlot, int> upgradeSlots) =>
      _$this._upgradeSlots = upgradeSlots;

  SetBuilder<Weapon> _weapons;
  SetBuilder<Weapon> get weapons =>
      _$this._weapons ??= new SetBuilder<Weapon>();
  set weapons(SetBuilder<Weapon> weapons) => _$this._weapons = weapons;

  SetBuilder<Keyword> _keywords;
  SetBuilder<Keyword> get keywords =>
      _$this._keywords ??= new SetBuilder<Keyword>();
  set keywords(SetBuilder<Keyword> keywords) => _$this._keywords = keywords;

  UnitBuilder();

  UnitBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _isUnique = _$v.isUnique;
      _subTitle = _$v.subTitle;
      _faction = _$v.faction;
      _type = _$v.type;
      _points = _$v.points;
      _rank = _$v.rank;
      _miniatures = _$v.miniatures;
      _wounds = _$v.wounds;
      _courage = _$v.courage;
      _resilience = _$v.resilience;
      _defence = _$v.defence;
      _attackSurge = _$v.attackSurge;
      _defenceSurge = _$v.defenceSurge;
      _speed = _$v.speed;
      _upgradeSlots = _$v.upgradeSlots?.toBuilder();
      _weapons = _$v.weapons?.toBuilder();
      _keywords = _$v.keywords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Unit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Unit;
  }

  @override
  void update(void updates(UnitBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Unit build() {
    _$Unit _$result;
    try {
      _$result = _$v ??
          new _$Unit._(
              name: name,
              isUnique: isUnique,
              subTitle: subTitle,
              faction: faction,
              type: type,
              points: points,
              rank: rank,
              miniatures: miniatures,
              wounds: wounds,
              courage: courage,
              resilience: resilience,
              defence: defence,
              attackSurge: attackSurge,
              defenceSurge: defenceSurge,
              speed: speed,
              upgradeSlots: upgradeSlots.build(),
              weapons: weapons.build(),
              keywords: keywords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'upgradeSlots';
        upgradeSlots.build();
        _$failedField = 'weapons';
        weapons.build();
        _$failedField = 'keywords';
        keywords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Unit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
