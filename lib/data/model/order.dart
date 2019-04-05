library order;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:shop_list_app/data/model/product.dart';
import 'package:shop_list_app/data/model/serializer/serializers.dart';

/*
part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {
  
  int get id;
  int get idOwner;
  String get date;
  String get shopName;
  String get location;
  double get price;
  String get link;
  List<Product> get items;

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
    return Order._
  }
  
}

*/

class Order {
  int id;
  int idOwner;
  String date;
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

    return Order._(
        id: mapJson["id"],
        idOwner: mapJson["id_owner"],
        date: mapJson["date"],
        shopName: mapJson["shop_name"],
        location: mapJson["location"],
        price: priceDouble,
        link: mapJson["link"],
        items:
            (mapJson["items"] as Iterable).map((item) => Product.fromJson(item)).toList());
  }
}
