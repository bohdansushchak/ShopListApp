library order_detail_event;

import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/order.dart';

part 'order_detail_event.g.dart';

abstract class OrderDetailEvent {}

abstract class OrderDetailInitiated extends OrderDetailEvent
    implements Built<OrderDetailInitiated, OrderDetailInitiatedBuilder> {
  Order get order;

  OrderDetailInitiated._();

  factory OrderDetailInitiated([updates(OrderDetailInitiatedBuilder b)]) =
      _$OrderDetailInitiated;
}

abstract class InviteOrderDetail extends OrderDetailEvent
    implements Built<InviteOrderDetail, InviteOrderDetailBuilder> {
  InviteOrderDetail._();
  int get id;

  factory InviteOrderDetail([updates(InviteOrderDetailBuilder b)]) =
      _$InviteOrderDetail;
}
