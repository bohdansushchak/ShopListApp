library add_products_event;

import 'package:built_value/built_value.dart';

part 'add_products_event.g.dart';

abstract class ProductsEvent {}

abstract class AddProductEvent extends ProductsEvent
    implements Built<AddProductEvent, AddProductEventBuilder> {
  String get product;

  AddProductEvent._();

  factory AddProductEvent([updates(AddProductEventBuilder b)]) =
      _$AddProductEvent;
}

abstract class RemoveProductevent extends ProductsEvent
    implements Built<RemoveProductevent, RemoveProducteventBuilder> {
  String get product;

  RemoveProductevent._();

  factory RemoveProductevent([updates(RemoveProducteventBuilder b)]) =
      _$RemoveProductevent;
}

abstract class SaveOrderEvent extends ProductsEvent
    implements Built<SaveOrderEvent, SaveOrderEventBuilder> {
  String get shopName;
  String get location;
  DateTime get date;
  String get price;

  SaveOrderEvent._();

  factory SaveOrderEvent([updates(SaveOrderEventBuilder b)]) = _$SaveOrderEvent;
}
