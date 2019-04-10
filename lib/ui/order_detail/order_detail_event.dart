library order_detail_event;

import 'package:built_value/built_value.dart';
import 'package:shop_list_app/data/model/order.dart';

part 'order_detail_event.g.dart';

abstract class OrderDetailEvent {}

abstract class OrderDetainInitiated extends OrderDetailEvent
    implements Built<OrderDetainInitiated, OrderDetainInitiatedBuilder> {
  Order get order;

  OrderDetainInitiated._();

  factory OrderDetainInitiated([updates(OrderDetainInitiatedBuilder b)]) =
      _$OrderDetainInitiated;
}

abstract class InviteOrderDetail extends OrderDetailEvent
    implements Built<InviteOrderDetail, InviteOrderDetailBuilder> {
  InviteOrderDetail._();
  int get id;

  factory InviteOrderDetail([updates(InviteOrderDetailBuilder b)]) =
      _$InviteOrderDetail;
}
