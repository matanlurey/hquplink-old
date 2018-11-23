import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'defence_dice.g.dart';

/// Represents possible _defence dice_ for a given unit.
class DefenceDice extends EnumClass {
  static Serializer<DefenceDice> get serializer => _$defenceDiceSerializer;
  static BuiltSet<DefenceDice> get values => _$values;
  static DefenceDice valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'WHITE')
  static const DefenceDice white = _$white;

  @BuiltValueEnumConst(wireName: 'RED')
  static const DefenceDice red = _$red;

  const DefenceDice._(String name) : super(name);
}
