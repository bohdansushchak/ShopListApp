library order;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/product.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {
  @BuiltValue(wireName: 'id')
  int get id;

  @BuiltValue(wireName: 'id_owner')
  int get idOwner;

  @BuiltValue(wireName: 'date')
  DateTime get date;

  @BuiltValue(wireName: 'shop_name')
  String get shopName;

  @BuiltValue(wireName: 'location')
  String get location;

  @BuiltValue(wireName: 'price')
  double get price;

  @BuiltValue(wireName: 'items')
  BuiltList<Product> get items;

  @nullable
  @BuiltValue(wireName: 'link')
  String get link;

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

  factory Order.fromMapJson(Map<String, dynamic> mapJson) {
    assert(mapJson != null);
    var date = DateTime.parse(mapJson["date"]);

    return Order((b) => b
      ..id = mapJson["id"]
      ..idOwner = mapJson["id_owner"]
      ..date = date
      ..shopName = mapJson["shop_name"]
      ..location = mapJson["location"]
      ..price = _parsePrice(mapJson["price"])
      ..link = mapJson["link"]
      ..items.replace(_builtProductList(mapJson["items"] as Iterable)));
  }
}

BuiltList<Product> _builtProductList(Iterable<dynamic> items) {
  final mapedProductList = items.map((item) => Product.fromMapJson(item));
  return BuiltList(mapedProductList);
}

double _parsePrice(dynamic price) =>
    price is double ? price : (price as int).toDouble();

/*
class Order {
  int id;
  int idOwner;
  DateTime date;
  String shopName;
  String location;
  double price;
  String link;
  List<Product> items;

  Order._(
      {this.id,
      this.idOwner,
      this.date,
      this.shopName,
      this.location,
      this.price,
      this.link,
      this.items});

  factory Order.fromMapJson(Map<String, dynamic> mapJson) {
    assert(mapJson != null);
    var price = mapJson["price"];
    var priceDouble = price is double ? price : (price as int).toDouble();
    var date = DateTime.parse(mapJson["date"]);

    return Order._(
        id: mapJson["id"],
        idOwner: mapJson["id_owner"],
        date: date,
        shopName: mapJson["shop_name"],
        location: mapJson["location"],
        price: priceDouble,
        link: mapJson["link"],
        items:
            (mapJson["items"] as Iterable).map((item) => Product.fromJson(item)).toList());
  }
}
*/
