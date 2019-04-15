library login_result;

import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/token_expires.dart';

part 'login_result.g.dart';

abstract class LoginResult implements Built<LoginResult, LoginResultBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @BuiltValueField(wireName: 'api_token')
  String get apiToken;

  @BuiltValueField(wireName: 'api_token_expires')
  TokenExpires get tokenExpires;

  LoginResult._();

  factory LoginResult([updates(LoginResultBuilder b)]) = _$LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> mapJson) {
    return new LoginResult((b) => b
      ..id = mapJson['id']
      ..email = mapJson['email']
      ..apiToken = mapJson['api_token']
      ..createdAt = mapJson['created_at']
      ..updatedAt = mapJson['updated_at']
      ..tokenExpires = TokenExpires.fromMapJson(mapJson['api_token_expires']).toBuilder()
      );
  }
}
