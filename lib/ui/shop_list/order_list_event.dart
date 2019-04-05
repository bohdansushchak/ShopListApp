library order_list_event;

abstract class OrderListEvent{}

abstract class OrderListInitiatedEvent extends OrderListEvent {}

abstract class OrderListAddOrderEvent extends OrderListEvent {}

