library order_detail_state;

import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/ui/add_products/add_products_state.dart';
import 'package:shop_list_app/ui/login/login_state.dart';
part 'order_detail_state.g.dart';

abstract class OrderDetailState
    implements
        Built<OrderDetailState, OrderDetailStateBuilder>,
        BaseState,
        AuthorizedState {
  @nullable
  Order get order;

  @nullable
  String get urlToInvite;

  bool get isSuccesfull => error.isEmpty && urlToInvite.isNotEmpty;

  OrderDetailState._();

  factory OrderDetailState([updates(OrderDetailStateBuilder b)]) =
      _$OrderDetailState;

  factory OrderDetailState.initial() {
    return OrderDetailState((b) => b
      ..error = ''
      ..isLoading = false
      ..isHasInternetConnection = true
      ..isAuthorized = true
      ..urlToInvite = null);
  }

  factory OrderDetailState.initialOrder(Order order) {
    return OrderDetailState((b) => b
      ..order.replace(order)
      ..error = ''
      ..isLoading = false
      ..isAuthorized = true
      ..isHasInternetConnection = true
      ..urlToInvite = null);
  }

  factory OrderDetailState.succesful(String url, Order order) {
    return OrderDetailState((b) => b
      ..error = ''
      ..order.replace(order)
      ..isLoading = false
      ..isAuthorized = true
      ..isHasInternetConnection = true
      ..urlToInvite = url);
  }

  factory OrderDetailState.failure(String error, Order order,
      {bool hasConnectivity = true, bool isAuthorized = true}) {
    return OrderDetailState((b) => b
      ..error = error
      ..order.replace(order)
      ..isLoading = false
      ..isHasInternetConnection = hasConnectivity
      ..isAuthorized = isAuthorized
      ..urlToInvite = null);
  }

  factory OrderDetailState.loading(Order order) {
    return OrderDetailState((b) => b
      ..error = ''
      ..order.replace(order)
      ..isLoading = true
      ..isAuthorized = true
      ..isHasInternetConnection = true
      ..urlToInvite = null);
  }
}
