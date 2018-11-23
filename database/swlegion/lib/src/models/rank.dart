import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rank.g.dart';

/// Represents possible ranks for a given unit.
class Rank extends EnumClass {
  static Serializer<Rank> get serializer => _$rankSerializer;
  static BuiltSet<Rank> get values => _$values;
  static Rank valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'COMMANDER')
  static const Rank commander = _$commander;

  @BuiltValueEnumConst(wireName: 'OPERATIVE')
  static const Rank operative = _$operative;

  @BuiltValueEnumConst(wireName: 'CORPS')
  static const Rank corps = _$corps;

  @BuiltValueEnumConst(wireName: 'SPECIAL_FORCES')
  static const Rank specialForces = _$specialForces;

  @BuiltValueEnumConst(wireName: 'SUPPORT')
  static const Rank support = _$support;

  @BuiltValueEnumConst(wireName: 'HEAVY')
  static const Rank heavy = _$heavy;

  const Rank._(String name) : super(name);
}
