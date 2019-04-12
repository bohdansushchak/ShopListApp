library response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/error_response.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'response.g.dart';

abstract class MyResponse<T> implements Built<MyResponse<T>, MyResponseBuilder<T>> {
  @nullable
  T get data;
  @nullable
  ErrorResponse get error;

  MyResponse._();

  factory MyResponse([updates(MyResponseBuilder<T> b)]) = _$MyResponse<T>;


  String toJson() {
    return json.encode(serializers.serializeWith(MyResponse.serializer, this));
  }

  static MyResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        MyResponse.serializer, json.decode(jsonString));
  }

  static Serializer<MyResponse> get serializer => _$myResponseSerializer;
  
}
