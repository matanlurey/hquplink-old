import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unit_type.g.dart';

/// Represents possible unit types.
class UnitType extends EnumClass {
  static Serializer<UnitType> get serializer => _$unitTypeSerializer;
  static BuiltSet<UnitType> get values => _$values;
  static UnitType valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'TROOPER')
  static const UnitType trooper = _$trooper;

  @BuiltValueEnumConst(wireName: 'EMPLACEMENT_TROOPER')
  static const UnitType empalcementTrooper = _$emplacementTrooper;

  @BuiltValueEnumConst(wireName: 'VEHICLE')
  static const UnitType vehicle = _$vehicle;

  const UnitType._(String name) : super(name);
}
