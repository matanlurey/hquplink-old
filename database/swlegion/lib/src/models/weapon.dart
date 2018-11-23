import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'attack_dice.dart';
import 'keywords.dart';

part 'weapon.g.dart';

abstract class Weapon implements Built<Weapon, WeaponBuilder> {
  static Serializer<Weapon> get serializer => _$weaponSerializer;

  factory Weapon({
    @required String name,
    @required Map<AttackDice, int> dice,
    @required int minRange,
    int maxRange,
    List<Keyword> keywords: const [],
  }) =>
      Weapon._builder((b) => b
        ..name = name
        ..dice.addAll(dice)
        ..minRange = minRange
        ..maxRange = maxRange
        ..keywords.addAll(keywords));

  // Private since this is predefined data.
  Weapon._();
  factory Weapon._builder(void Function(WeaponBuilder) build) = _$Weapon;

  String get name;

  /// Attack dice for the weapon.
  BuiltMap<AttackDice, int> get dice;

  /// Minimum range of the weapon.
  ///
  /// A range of `0` is considered melee range.
  @BuiltValueField(wireName: 'min_range')
  int get minRange;

  /// Maximum range of the weapon.
  ///
  /// If omitted (`null`), the maximum range is _unlimited_.
  @BuiltValueField(wireName: 'max_range')
  @nullable
  int get maxRange;

  /// Keywords on the weapon.
  BuiltSet<Keyword> get keywords;
}
