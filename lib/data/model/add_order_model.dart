library add_order_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'add_order_model.g.dart';

abstract class AddOrderModel
    implements Built<AddOrderModel, AddOrderModelBuilder> {

  @BuiltValueField(wireName: "api_token")
  String get apiToken;
  
  @BuiltValueField(wireName: "date")
  String get date;

  @BuiltValueField(wireName: "shop_name")
  String get shopName;

  @BuiltValueField(wireName: "location")
  String get location;

  @BuiltValueField(wireName: "price")
  double get price;

  @BuiltValueField(wireName: "items")
  BuiltList<String> get items;

  AddOrderModel._();

  factory AddOrderModel([updates(AddOrderModelBuilder b)]) = _$AddOrderModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AddOrderModel.serializer, this));
  }

  factory AddOrderModel.fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddOrderModel.serializer, json.decode(jsonString));
  }

  static Serializer<AddOrderModel> get serializer => _$addOrderModelSerializer;
}
