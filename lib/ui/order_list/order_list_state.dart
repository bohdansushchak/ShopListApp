library order_list_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/ui/add_products/add_products_state.dart';
import 'package:shop_list_app/ui/login/login_state.dart';

part 'order_list_state.g.dart';

abstract class OrderListState
    implements
        Built<OrderListState, OrderListStateBuilder>,
        BaseState,
        AuthorizedState {
  BuiltList<Order> get orderList;
  bool get hasReachedEndOfResults;

  bool get isInitial => !isLoading && orderList.isEmpty && error.isEmpty;
  bool get isSuccessful => !isLoading && orderList.isNotEmpty && error.isEmpty;
  OrderListState._();

  factory OrderListState([updates(OrderListStateBuilder b)]) = _$OrderListState;

  factory OrderListState.initial() {
    return OrderListState((b) => b
      ..isHasInternetConnection = true
      ..isLoading = false
      ..error = ''
      ..isAuthorized = true
      ..orderList.replace(BuiltList<Order>())
      ..hasReachedEndOfResults = false);
  }

  factory OrderListState.loading() {
    return OrderListState((b) => b
      ..isLoading = true
      ..isHasInternetConnection = true
      ..error = ''
      ..isAuthorized = true
      ..orderList.replace(BuiltList<Order>())
      ..hasReachedEndOfResults = false);
  }

  factory OrderListState.failure(
      {String error, bool hasConnectivity = true, bool isAuthorized = true}) {
    return OrderListState((b) => b
      ..isLoading = false
      ..isHasInternetConnection = hasConnectivity
      ..error = error
      ..isAuthorized = isAuthorized
      ..orderList.replace(BuiltList<Order>())
      ..hasReachedEndOfResults = false);
  }

  factory OrderListState.success(BuiltList<Order> resultList) {
    return OrderListState((b) => b
      ..isLoading = false
      ..isHasInternetConnection = true
      ..error = ''
      ..isAuthorized = true
      ..orderList.replace(resultList)
      ..hasReachedEndOfResults = false);
  }
}
