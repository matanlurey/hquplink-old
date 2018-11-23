import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attack_surge.g.dart';

class AttackSurge extends EnumClass {
  static Serializer<AttackSurge> get serializer => _$attackSurgeSerializer;
  static BuiltSet<AttackSurge> get values => _$values;
  static AttackSurge valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'HIT')
  static const AttackSurge hit = _$hit;

  @BuiltValueEnumConst(wireName: 'CRITICAL')
  static const AttackSurge critical = _$critical;

  const AttackSurge._(String name) : super(name);
}
