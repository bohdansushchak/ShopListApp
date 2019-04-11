library order_detail_state;

import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/order.dart';
part 'order_detail_state.g.dart';

abstract class OrderDetailState
    implements Built<OrderDetailState, OrderDetailStateBuilder> {
  String get error;

  @nullable
  Order get order;

  @nullable
  String get urlToInvite;

  bool get isLoading;

  bool get isSuccesfull => error.isEmpty && urlToInvite.isNotEmpty;

  OrderDetailState._();

  factory OrderDetailState([updates(OrderDetailStateBuilder b)]) =
      _$OrderDetailState;

  factory OrderDetailState.initial() {
    return OrderDetailState((b) => b
      ..error = ''
      ..isLoading = false
      ..urlToInvite = null);
  }

  factory OrderDetailState.initialOrder(Order order) {
    return OrderDetailState((b) => b
      ..order.replace(order)
      ..error = ''
      ..isLoading = false
      ..urlToInvite = null);
  }

  factory OrderDetailState.succesful(String url, Order order) {
    return OrderDetailState((b) => b
      ..error = ''
      ..order.replace(order)
      ..isLoading = false
      ..urlToInvite = url);
  }

  factory OrderDetailState.failure(String error, Order order) {
    return OrderDetailState((b) => b
      ..error = error
      ..order.replace(order)
      ..isLoading = false
      ..urlToInvite = null);
  }

  factory OrderDetailState.loading(Order order) {
    return OrderDetailState((b) => b
      ..error = ''
      ..order.replace(order)
      ..isLoading = true
      ..urlToInvite = null);
  }
}
