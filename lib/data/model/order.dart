library order;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/product.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {
  String get date;
  int get id;
  String get shopName;
  int get idOwner;
  List<Product> get items;
  String get link;
  String get location;
  double get price;

  Order._();

  factory Order([updates(OrderBuilder b)]) = _$Order;

  String toJson() {
    return json.encode(serializers.serializeWith(Order.serializer, this));
  }

  static Order fromJson(String jsonString) {
    return serializers.deserializeWith(
        Order.serializer, json.decode(jsonString));
  }

  static Serializer<Order> get serializer => _$orderSerializer;
}
