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

  OrderDetailState._();

  factory OrderDetailState([updates(OrderDetailStateBuilder b)]) =
      _$OrderDetailState;

  factory OrderDetailState.initial(Order order) {
    return OrderDetailState((b) => b
      ..order = order
      ..error = ''
      ..urlToInvite = null);
  }

  factory OrderDetailState.succesful(String url, Order order) {
    return OrderDetailState((b) => b
      ..error = ''
      ..order = order
      ..urlToInvite = url);
  }

  factory OrderDetailState.failure(String error, Order order) {
    return OrderDetailState((b) => b
      ..error = error
      ..order = order
      ..urlToInvite = null);
  }
}
