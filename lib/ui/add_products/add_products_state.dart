library add_products_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_list_app/ui/login/login_state.dart';

part 'add_products_state.g.dart';

abstract class AddProductsState
    implements Built<AddProductsState, AddProductsStateBuilder>, BaseState {
  BuiltList<String> get products;

  //String get error;

  //bool get isLoading;

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
      ..isHasInternetConnection = true
      ..products.replace(BuiltList<String>()));
  }

  factory AddProductsState.loading({BuiltList<String> products}) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = true
      ..isOrdesHasBeenCreated = false
      ..isHasInternetConnection = true
      ..products.replace(products != null ? products : BuiltList<String>()));
  }

  factory AddProductsState.failure(BuiltList<String> productList, String error,
      [bool isHasConnectivity = true]) {
    return AddProductsState((b) => b
      ..error = error != null ? error : ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..isHasInternetConnection = isHasConnectivity
      ..products.replace(productList));
  }

  factory AddProductsState.productsUpdate(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..isHasInternetConnection = true
      ..products.replace(productList));
  }

  factory AddProductsState.orderCreated(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = true
      ..isHasInternetConnection = true
      ..products.replace(productList));
  }
}
