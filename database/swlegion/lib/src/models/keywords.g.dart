// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keywords.dart';

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

const Keyword _$armor = const Keyword._('armor');
const Keyword _$charge = const Keyword._('charge');
const Keyword _$climbingVehicle = const Keyword._('climbingVehicle');
const Keyword _$cover1 = const Keyword._('cover1');
const Keyword _$deflect = const Keyword._('deflect');
const Keyword _$expertClimber = const Keyword._('expertClimber');
const Keyword _$fixedFront = const Keyword._('fixedFront');
const Keyword _$impact1 = const Keyword._('impact1');
const Keyword _$impact2 = const Keyword._('impact2');
const Keyword _$impact3 = const Keyword._('impact3');
const Keyword _$immunePierce = const Keyword._('immunePierce');
const Keyword _$jump1 = const Keyword._('jump1');
const Keyword _$masterOfTheForce1 = const Keyword._('masterOfTheForce1');
const Keyword _$nimble = const Keyword._('nimble');
const Keyword _$pierce1 = const Keyword._('pierce1');
const Keyword _$pierce2 = const Keyword._('pierce2');
const Keyword _$pierce3 = const Keyword._('pierce3');
const Keyword _$precise1 = const Keyword._('precise1');
const Keyword _$speeder1 = const Keyword._('speeder1');
const Keyword _$relentless = const Keyword._('relentless');

Keyword _$valueOf(String name) {
  switch (name) {
    case 'armor':
      return _$armor;
    case 'charge':
      return _$charge;
    case 'climbingVehicle':
      return _$climbingVehicle;
    case 'cover1':
      return _$cover1;
    case 'deflect':
      return _$deflect;
    case 'expertClimber':
      return _$expertClimber;
    case 'fixedFront':
      return _$fixedFront;
    case 'impact1':
      return _$impact1;
    case 'impact2':
      return _$impact2;
    case 'impact3':
      return _$impact3;
    case 'immunePierce':
      return _$immunePierce;
    case 'jump1':
      return _$jump1;
    case 'masterOfTheForce1':
      return _$masterOfTheForce1;
    case 'nimble':
      return _$nimble;
    case 'pierce1':
      return _$pierce1;
    case 'pierce2':
      return _$pierce2;
    case 'pierce3':
      return _$pierce3;
    case 'precise1':
      return _$precise1;
    case 'speeder1':
      return _$speeder1;
    case 'relentless':
      return _$relentless;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Keyword> _$values = new BuiltSet<Keyword>(const <Keyword>[
  _$armor,
  _$charge,
  _$climbingVehicle,
  _$cover1,
  _$deflect,
  _$expertClimber,
  _$fixedFront,
  _$impact1,
  _$impact2,
  _$impact3,
  _$immunePierce,
  _$jump1,
  _$masterOfTheForce1,
  _$nimble,
  _$pierce1,
  _$pierce2,
  _$pierce3,
  _$precise1,
  _$speeder1,
  _$relentless,
]);

Serializer<Keyword> _$keywordSerializer = new _$KeywordSerializer();

class _$KeywordSerializer implements PrimitiveSerializer<Keyword> {
  static const Map<String, String> _toWire = const <String, String>{
    'armor': 'ARMOR',
    'charge': 'CHARGE',
    'climbingVehicle': 'CLIMBING_VEHICLE',
    'cover1': 'COVER:1',
    'deflect': 'DEFLECT',
    'expertClimber': 'EXPERT_CLIMBER',
    'fixedFront': 'FIXED:FRONT',
    'impact1': 'IMPACT:1',
    'impact2': 'IMPACT:2',
    'impact3': 'IMPACT:3',
    'immunePierce': 'IMMUNE:PIERCE',
    'jump1': 'JUMP:1',
    'masterOfTheForce1': 'MASTER_OF_THE_FORCE:1',
    'nimble': 'NIMBLE',
    'pierce1': 'PIERCE:1',
    'pierce2': 'PIERCE:2',
    'pierce3': 'PIERCE:3',
    'precise1': 'PRECISE:1',
    'speeder1': 'SPEEDER:1',
    'relentless': 'RELENTLESS',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'ARMOR': 'armor',
    'CHARGE': 'charge',
    'CLIMBING_VEHICLE': 'climbingVehicle',
    'COVER:1': 'cover1',
    'DEFLECT': 'deflect',
    'EXPERT_CLIMBER': 'expertClimber',
    'FIXED:FRONT': 'fixedFront',
    'IMPACT:1': 'impact1',
    'IMPACT:2': 'impact2',
    'IMPACT:3': 'impact3',
    'IMMUNE:PIERCE': 'immunePierce',
    'JUMP:1': 'jump1',
    'MASTER_OF_THE_FORCE:1': 'masterOfTheForce1',
    'NIMBLE': 'nimble',
    'PIERCE:1': 'pierce1',
    'PIERCE:2': 'pierce2',
    'PIERCE:3': 'pierce3',
    'PRECISE:1': 'precise1',
    'SPEEDER:1': 'speeder1',
    'RELENTLESS': 'relentless',
  };

  @override
  final Iterable<Type> types = const <Type>[Keyword];
  @override
  final String wireName = 'Keyword';

  @override
  Object serialize(Serializers serializers, Keyword object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Keyword deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Keyword.valueOf(_fromWire[serialized] ?? serialized as String);
}
