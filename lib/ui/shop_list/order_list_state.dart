library order_list_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/order.dart';

part 'order_list_state.g.dart';

abstract class OrderListState
    implements Built<OrderListState, OrderListStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Order> get orderList;
  bool get hasReachedEndOfResults;

  bool get isInitial => !isLoading && orderList.isEmpty && error == '';
  bool get isSuccessful => !isLoading && orderList.isNotEmpty && error == '';

  OrderListState._();

  factory OrderListState([updates(OrderListStateBuilder b)]) = _$OrderListState;

  factory OrderListState.initial() {
    return OrderListState((b) => b
      ..isLoading = false
      ..error = ''
      ..orderList.replace(BuiltList<Order>())
      ..hasReachedEndOfResults = false);
  }

  factory OrderListState.loading() {
    return OrderListState((b) => b
      ..isLoading = true
      ..error = ''
      ..orderList.replace(BuiltList<Order>())
      ..hasReachedEndOfResults = false);
  }

  factory OrderListState.failure(String error) {
    return OrderListState((b) => b
      ..isLoading = false
      ..error = error
      ..orderList.replace(BuiltList<Order>())
      ..hasReachedEndOfResults = false);
  }

  factory OrderListState.success(BuiltList<Order> resultList) {
    return OrderListState((b) => b
      ..isLoading = false
      ..error = ''
      ..orderList.replace(resultList)
      ..hasReachedEndOfResults = false);
  }
}
