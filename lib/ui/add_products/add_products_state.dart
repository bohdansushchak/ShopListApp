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

  bool get isLoading;

  bool get isOrdesHasBeenCreated;

  AddProductsState._();

  factory AddProductsState([updates(AddProductsStateBuilder b)]) =
      _$AddProductsState;

  factory AddProductsState.initial() {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..products.replace(BuiltList<String>()));
  }

  factory AddProductsState.loading({BuiltList<String> products}) {
    if (products != null)
      return AddProductsState((b) => b
        ..productError = null
        ..priceError = null
        ..isLoading = true
        ..isOrdesHasBeenCreated = false
        ..products.replace(products));
    else
      return AddProductsState((b) => b
        ..productError = null
        ..priceError = null
        ..isLoading = true
        ..isOrdesHasBeenCreated = false
        ..products.replace(BuiltList<String>()));
  }

  factory AddProductsState.failure(BuiltList<String> productList,
      {String productError, String priceError, String error}) {
    return AddProductsState((b) => b
      ..productError = productError
      ..priceError = priceError
      ..error = error
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..products.replace(productList));
  }

  factory AddProductsState.productAdded(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..error = null
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..products.replace(productList));
  }

  factory AddProductsState.removeProduct(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..error = null
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..products.replace(productList));
  }

  factory AddProductsState.orderCreated(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..productError = null
      ..priceError = null
      ..error = null
      ..isLoading = false
      ..isOrdesHasBeenCreated = true
      ..products.replace(productList));
  }
}
