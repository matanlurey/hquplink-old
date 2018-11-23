import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'attack_surge.dart';
import 'defence_dice.dart';
import 'faction.dart';
import 'keywords.dart';
import 'rank.dart';
import 'unit_type.dart';
import 'upgrade_slot.dart';
import 'weapon.dart';

part 'unit.g.dart';

abstract class Unit implements Built<Unit, UnitBuilder> {
  static Serializer<Unit> get serializer => _$unitSerializer;

  factory Unit({
    @required String name,
    bool isUnique: false,
    String subTitle,
    @required Faction faction,
    @required UnitType type,
    @required int points,
    @required Rank rank,
    @required int miniatures,
    @required int wounds,
    int courage,
    int resilience,
    @required DefenceDice defence,
    AttackSurge attackSurge,
    bool defenceSurge: false,
    @required int speed,
    Map<UpgradeSlot, int> upgradeSlots: const {},
    List<Weapon> weapons: const [],
    List<Keyword> keywords: const [],
  }) =>
      Unit._builder((b) => b
        ..name = name
        ..isUnique = isUnique
        ..subTitle = subTitle
        ..faction = faction
        ..type = type
        ..points = points
        ..rank = rank
        ..miniatures = miniatures
        ..wounds = wounds
        ..courage = courage
        ..resilience = resilience
        ..defence = defence
        ..attackSurge = attackSurge
        ..defenceSurge = defenceSurge
        ..speed = speed
        ..upgradeSlots.addAll(upgradeSlots)
        ..weapons.addAll(weapons)
        ..keywords.addAll(keywords));

  Unit._();
  factory Unit._builder(void Function(UnitBuilder) build) = _$Unit;

  /// Name of the unit.
  String get name;

  /// Whether this is a _unique_ unit (one per army).
  @BuiltValueField(wireName: 'is_unique')
  bool get isUnique;

  /// An optional _sub-title_ for the unit.
  ///
  /// If omitted (`null`), then the unit does not have one.
  @BuiltValueField(wireName: 'sub_title')
  @nullable
  String get subTitle;

  /// Faction the unit belongs to.
  Faction get faction;

  /// Type of the unit.
  UnitType get type;

  /// Amount of points the unit costs to bring into an army list.
  int get points;

  /// Rank of the unit when building an army list.
  Rank get rank;

  /// Number of miniatures that come with the unit.
  int get miniatures;

  /// Amount of damage that can be inflicted on this unit.
  int get wounds;

  /// Courage of the unit (for troopers).
  ///
  /// If omitted (`null`), this unit is immune to the effects of suppression.
  @nullable
  int get courage;

  /// Resilience of the unit (for vehicles).
  ///
  /// If omitted (`null`), this unit is immune to the effects of vehicle damage.
  @nullable
  int get resilience;

  /// Dice to be rolled to prevent damage.
  DefenceDice get defence;

  /// How the _surge_ icon converts for _attacks_.
  ///
  /// If omitted (`null`), it does not convert.
  @BuiltValueField(wireName: 'attack_surge')
  @nullable
  AttackSurge get attackSurge;

  /// Whether the _surge_ icon converts for _defence_.
  bool get defenceSurge;

  /// Speed of the unit when moving.
  int get speed;

  /// Available slots for upgrades for this unit.
  @BuiltValueField(wireName: 'upgrade_slots')
  BuiltMap<UpgradeSlot, int> get upgradeSlots;

  /// Weapons included with this unit.
  BuiltSet<Weapon> get weapons;

  /// Keywords on the unit.
  BuiltSet<Keyword> get keywords;
}
