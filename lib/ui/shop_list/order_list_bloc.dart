import 'package:bloc/bloc.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/ui/shop_list/order_list_event.dart';
import 'package:shop_list_app/ui/shop_list/order_list_state.dart';
import 'package:shop_list_app/internal/exeptions.dart';

class OrderListBloc extends Bloc<OrderListEvent, OrderListState> {
  final Repository _repository;

  OrderListBloc(this._repository) : super();

  @override
  OrderListState get initialState {
    return OrderListState.initial();
  }

  @override
  Stream<OrderListState> mapEventToState(event) async* {
    if (event is OrderListInitiatedEvent) {
      yield* mapOrderListIntiated(event);
    }
  }

  Stream<OrderListState> mapOrderListIntiated(
      OrderListInitiatedEvent event) async* {
    yield OrderListState.loading();
    try {
      final orderListResult = await _repository.getOrders();

      yield OrderListState.success(orderListResult);
    } on ServerException catch (e) {
      yield OrderListState.failure(e.message);
    }
  }
}
