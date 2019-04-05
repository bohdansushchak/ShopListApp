library error_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'error_response.g.dart';

abstract class ErrorResponse
    implements Built<ErrorResponse, ErrorResponseBuilder> {
  int get code;
  String get message;
  
  ErrorResponse._();

  factory ErrorResponse([updates(ErrorResponseBuilder b)]) = _$ErrorResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ErrorResponse.serializer, this));
  }

  static ErrorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ErrorResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ErrorResponse> get serializer => _$errorResponseSerializer;
}
