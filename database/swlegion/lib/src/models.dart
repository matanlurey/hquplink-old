import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

// Import self in order to use in the metadata annotation.
import 'models.dart';

export 'models/attack_dice.dart' show AttackDice;
export 'models/attack_surge.dart' show AttackSurge;
export 'models/defence_dice.dart' show DefenceDice;
export 'models/faction.dart' show Faction;
export 'models/keywords.dart' show Keyword;
export 'models/rank.dart' show Rank;
export 'models/unit_type.dart' show UnitType;
export 'models/unit.dart' show Unit;
export 'models/upgrade_slot.dart' show UpgradeSlot;
export 'models/weapon.dart' show Weapon;

part 'models.g.dart';

/// A [Serializers] for the models provided by this package.
@SerializersFor([
  AttackDice,
  AttackSurge,
  DefenceDice,
  Faction,
  Keyword,
  Rank,
  UnitType,
  Unit,
  UpgradeSlot,
  Weapon,
])
final Serializers modelSerializers = _$modelSerializers;
