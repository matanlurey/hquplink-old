import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attack_dice.g.dart';

/// Represents possible _attack dice_ for a given weapon.
class AttackDice extends EnumClass {
  static Serializer<AttackDice> get serializer => _$attackDiceSerializer;
  static BuiltSet<AttackDice> get values => _$values;
  static AttackDice valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'WHITE')
  static const AttackDice white = _$white;

  @BuiltValueEnumConst(wireName: 'BLACK')
  static const AttackDice black = _$black;

  @BuiltValueEnumConst(wireName: 'RED')
  static const AttackDice red = _$red;

  const AttackDice._(String name) : super(name);
}
