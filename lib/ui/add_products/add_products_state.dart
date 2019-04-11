library add_products_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'add_products_state.g.dart';

abstract class AddProductsState
    implements Built<AddProductsState, AddProductsStateBuilder> {
  BuiltList<String> get products;

  String get error;

  bool get isLoading;

  bool get isOrdesHasBeenCreated;

  bool get isHasError => error.isNotEmpty;

  AddProductsState._();

  factory AddProductsState([updates(AddProductsStateBuilder b)]) =
      _$AddProductsState;

  factory AddProductsState.initial() {
    return AddProductsState((b) => b
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..error = ''
      ..products.replace(BuiltList<String>()));
  }

  factory AddProductsState.loading({BuiltList<String> products}) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = true
      ..isOrdesHasBeenCreated = false
      ..products.replace(products != null ? products : BuiltList<String>()));
  }

  factory AddProductsState.failure(
      BuiltList<String> productList, String error) {
    return AddProductsState((b) => b
      ..error = error != null ? error : ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..products.replace(productList));
  }

  factory AddProductsState.productsUpdate(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..products.replace(productList));
  }

  factory AddProductsState.orderCreated(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = true
      ..products.replace(productList));
  }
}
