library add_products_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_list_app/ui/login/login_state.dart';

part 'add_products_state.g.dart';

abstract class AuthorizedState {
  bool get isAuthorized;
}

abstract class AddProductsState
    implements
        Built<AddProductsState, AddProductsStateBuilder>,
        BaseState,
        AuthorizedState {
  BuiltList<String> get products;

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
      ..isAuthorized = true
      ..products.replace(BuiltList<String>()));
  }

  factory AddProductsState.loading({BuiltList<String> products}) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = true
      ..isOrdesHasBeenCreated = false
      ..isHasInternetConnection = true
      ..isAuthorized = true
      ..products.replace(products != null ? products : BuiltList<String>()));
  }

  factory AddProductsState.failure(BuiltList<String> productList, String error,
      {bool isHasConnectivity = true, bool isAuthorized = true}) {
    return AddProductsState((b) => b
      ..error = error != null ? error : ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..isAuthorized = isAuthorized
      ..isHasInternetConnection = isHasConnectivity
      ..products.replace(productList));
  }

  factory AddProductsState.productsUpdate(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = false
      ..isHasInternetConnection = true
      ..isAuthorized = true
      ..products.replace(productList));
  }

  factory AddProductsState.orderCreated(BuiltList<String> productList) {
    return AddProductsState((b) => b
      ..error = ''
      ..isLoading = false
      ..isOrdesHasBeenCreated = true
      ..isHasInternetConnection = true
      ..isAuthorized = true
      ..products.replace(productList));
  }
}
