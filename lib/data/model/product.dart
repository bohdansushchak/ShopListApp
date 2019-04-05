library product;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  int get id;
  String get item;
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

  static Serializer<Product> get serializer => _$productSerializer;
}
