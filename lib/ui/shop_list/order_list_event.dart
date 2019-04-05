library order_list_event;

abstract class OrderListEvent {}

class OrderListInitiatedEvent extends OrderListEvent {}

class FetchNextOrderListPage extends OrderListEvent {}

class OrderListAddOrderEvent extends OrderListEvent {}

