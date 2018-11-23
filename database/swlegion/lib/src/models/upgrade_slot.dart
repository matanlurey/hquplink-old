import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upgrade_slot.g.dart';

/// Represents possible upgrade slots.
class UpgradeSlot extends EnumClass {
  static Serializer<UpgradeSlot> get serializer => _$upgradeSlotSerializer;
  static BuiltSet<UpgradeSlot> get values => _$values;
  static UpgradeSlot valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'HEAVY_WEAPON')
  static const UpgradeSlot heavyWeapon = _$heavyWeapon;

  @BuiltValueEnumConst(wireName: 'PERSONNEL')
  static const UpgradeSlot personnel = _$personnel;

  @BuiltValueEnumConst(wireName: 'FORCE')
  static const UpgradeSlot force = _$force;

  @BuiltValueEnumConst(wireName: 'COMMAND')
  static const UpgradeSlot command = _$command;

  @BuiltValueEnumConst(wireName: 'GEAR')
  static const UpgradeSlot gear = _$gear;

  @BuiltValueEnumConst(wireName: 'GRENADES')
  static const UpgradeSlot grenades = _$grenades;

  @BuiltValueEnumConst(wireName: 'HARD_POINT')
  static const UpgradeSlot hardPoint = _$hardPoint;

  @BuiltValueEnumConst(wireName: 'COMMS')
  static const UpgradeSlot comms = _$comms;

  @BuiltValueEnumConst(wireName: 'PILOT')
  static const UpgradeSlot pilot = _$pilot;

  @BuiltValueEnumConst(wireName: 'ELITE')
  static const UpgradeSlot elite = _$elite;

  @BuiltValueEnumConst(wireName: 'GENERATOR')
  static const UpgradeSlot generator = _$generator;

  const UpgradeSlot._(String name) : super(name);
}
