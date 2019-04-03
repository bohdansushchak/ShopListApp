library login_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'login_result.g.dart';

abstract class LoginResult implements Built<LoginResult, LoginResultBuilder> {

LoginResult._();

factory LoginResult([updates(LoginResultBuilder b)]) = _$LoginResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(LoginResult.serializer, this));
  }

  static LoginResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginResult.serializer, json.decode(jsonString));
  }

  static Serializer<LoginResult> get serializer => _$loginResultSerializer;
}
