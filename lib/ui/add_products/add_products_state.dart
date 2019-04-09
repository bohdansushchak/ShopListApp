library add_products_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'add_products_state.g.dart';

abstract class AddProductsState
    implements Built<AddProductsState, AddProductsStateBuilder> {
  BuiltList<String> get products;
  @nullable
  String get productError;
  @nullable
  String get priceError;
  @nullable 
  String get error;

  AddProductsState._();

  factory AddProductsState([updates(AddProductsStateBuilder b)]) =
      _$AddProductsState;

  factory AddProductsState.initial() {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..products.replace(BuiltList<String>()));
  }

  factory AddProductsState.failure(BuiltList<String> productList,
      {String productError, String priceError, String error}) {
    return AddProductsState((b) => b
      ..productError = productError
      ..priceError = priceError
      ..error = error
      ..products.replace(productList));
  }

  factory AddProductsState.productAdded(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..error = null
      ..products.replace(productList));
  }

  factory AddProductsState.removeProduct(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..error = null
      ..products.replace(productList));
  }
}
