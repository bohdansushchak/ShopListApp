library product;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  @BuiltValue(wireName: 'id')
  int get id;

  @BuiltValue(wireName: 'item')
  String get item;

  @BuiltValue(wireName: 'order_id')
  int get orderId;

  Product._();

  factory Product([updates(ProductBuilder b)]) = _$Product;

  String toJson() {
    return json.encode(serializers.serializeWith(Product.serializer, this));
  }

  static Product fromJson(String jsonString) {
    return serializers.deserializeWith(
        Product.serializer, json.decode(jsonString));
  }

  factory Product.fromMapJson(Map<String, dynamic> mapJson) {
    return Product((b) => b
      ..id = mapJson["id"]
      ..orderId = mapJson["order_id"]
      ..item = mapJson["item"]);
  }

  static Serializer<Product> get serializer => _$productSerializer;
}

/*
class Product {
  int id;
  String item;
  int orderId;

  Product._({this.id, this.item, this.orderId});

  factory Product.fromJson(Map<String, dynamic> mapJson) {
    return new Product._(
        id: mapJson["id"], orderId: mapJson["order_id"], item: mapJson["item"]);
  }
}*/
