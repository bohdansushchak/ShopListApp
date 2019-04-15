library token_expires;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'token_expires.g.dart';

abstract class TokenExpires
    implements Built<TokenExpires, TokenExpiresBuilder> {
  @BuiltValueField(wireName: "date")
  String get date;

  @BuiltValueField(wireName: "timezone_type")
  int get timeZoneType;

  @BuiltValueField(wireName: "timezone")
  String get timeZone;

  TokenExpires._();

  factory TokenExpires([updates(TokenExpiresBuilder b)]) = _$TokenExpires;

  factory TokenExpires.fromMapJson(Map<String, dynamic> mapJson) {
    return new TokenExpires((b) => b
      ..date = mapJson['date']
      ..timeZoneType = mapJson['timezone_type']
      ..timeZone = mapJson['timezone']);
  }

  String toJson() {
    return json
        .encode(serializers.serializeWith(TokenExpires.serializer, this));
  }

  static TokenExpires fromJson(String jsonString) {
    return serializers.deserializeWith(
        TokenExpires.serializer, json.decode(jsonString));
  }

  static Serializer<TokenExpires> get serializer => _$tokenExpiresSerializer;
}
