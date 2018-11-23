import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'faction.g.dart';

/// Represents possible factions.
class Faction extends EnumClass {
  static Serializer<Faction> get serializer => _$factionSerializer;
  static BuiltSet<Faction> get values => _$values;
  static Faction valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'REBELS')
  static const Faction rebels = _$rebels;

  @BuiltValueEnumConst(wireName: 'IMPERIALS')
  static const Faction imperials = _$imperials;

  @BuiltValueEnumConst(wireName: 'NEUTRAL')
  static const Faction neutral = _$neutral;

  const Faction._(String name) : super(name);
}
