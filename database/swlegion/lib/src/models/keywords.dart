import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keywords.g.dart';

/// Represents possible keywords.
class Keyword extends EnumClass {
  static Serializer<Keyword> get serializer => _$keywordSerializer;
  static BuiltSet<Keyword> get values => _$values;
  static Keyword valueOf(String name) => _$valueOf(name);

  @BuiltValueEnumConst(wireName: 'FIXED:FRONT')
  static const Keyword fixedFront = _$fixedFront;

  @BuiltValueEnumConst(wireName: 'IMPACT:1')
  static const Keyword impact1 = _$impact1;

  @BuiltValueEnumConst(wireName: 'IMPACT:2')
  static const Keyword impact2 = _$impact2;

  @BuiltValueEnumConst(wireName: 'IMPACT:3')
  static const Keyword impact3 = _$impact3;

  @BuiltValueEnumConst(wireName: 'PIERCE:1')
  static const Keyword pierce1 = _$pierce1;

  @BuiltValueEnumConst(wireName: 'PIERCE:2')
  static const Keyword pierce2 = _$pierce2;

  @BuiltValueEnumConst(wireName: 'PIERCE:3')
  static const Keyword pierce3 = _$pierce3;

  @BuiltValueEnumConst(wireName: 'PRECISE:1')
  static const Keyword precise1 = _$precise1;

  @BuiltValueEnumConst(wireName: 'NIMBLE')
  static const Keyword nimble = _$nimble;

  const Keyword._(String name) : super(name);
}
