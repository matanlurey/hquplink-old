// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

const Faction _$rebels = const Faction._('rebels');
const Faction _$imperials = const Faction._('imperials');
const Faction _$neutral = const Faction._('neutral');

Faction _$valueOf(String name) {
  switch (name) {
    case 'rebels':
      return _$rebels;
    case 'imperials':
      return _$imperials;
    case 'neutral':
      return _$neutral;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Faction> _$values = new BuiltSet<Faction>(const <Faction>[
  _$rebels,
  _$imperials,
  _$neutral,
]);

Serializer<Faction> _$factionSerializer = new _$FactionSerializer();

class _$FactionSerializer implements PrimitiveSerializer<Faction> {
  static const Map<String, String> _toWire = const <String, String>{
    'rebels': 'REBELS',
    'imperials': 'IMPERIALS',
    'neutral': 'NEUTRAL',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'REBELS': 'rebels',
    'IMPERIALS': 'imperials',
    'NEUTRAL': 'neutral',
  };

  @override
  final Iterable<Type> types = const <Type>[Faction];
  @override
  final String wireName = 'Faction';

  @override
  Object serialize(Serializers serializers, Faction object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Faction deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Faction.valueOf(_fromWire[serialized] ?? serialized as String);
}
