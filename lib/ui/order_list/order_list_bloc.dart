import 'package:bloc/bloc.dart';
import 'package:shop_list_app/data/repository/repository.dart';

import 'package:shop_list_app/internal/exeptions.dart';
import 'package:shop_list_app/ui/order_list/order_list_event.dart';
import 'package:shop_list_app/ui/order_list/order_list_state.dart';

const MAX_ORDERS_IN_PAGE = 25;

class OrderListBloc extends Bloc<OrderListEvent, OrderListState> {
  final Repository _repository;

  OrderListBloc(this._repository);

  void fetchOrderList() => dispatch(OrderListInitiatedEvent());

  void fetchNextOrderListPage() {
    dispatch(FetchNextOrderListPage());
  }

  @override
  OrderListState get initialState {
    return OrderListState.initial();
  }

  @override
  Stream<OrderListState> mapEventToState(OrderListEvent event) async* {
    if (event is FetchNextOrderListPage) {
      yield* mapFetchOrdersPage();
    }
    if (event is OrderListInitiatedEvent) {
      yield OrderListState.loading();
      yield* mapFetchOrdersPage();
    }
  }

  Stream<OrderListState> mapFetchOrdersPage() async* {
    try {
      final nextPageOrders = await _repository.getOrders(
          currentState.orderList.length, MAX_ORDERS_IN_PAGE);

      yield OrderListState.success(currentState.orderList + nextPageOrders);
    } on ServerException catch (e) {
      yield OrderListState.failure(error: e.message);
    } on NoOrdersException {
      yield currentState.rebuild((b) => b..hasReachedEndOfResults = true);
    } on UnauthorizedException catch (e) {
      yield OrderListState.failure(error: e.message, isAuthorized: false);
    } on NoConnectivityException catch (e) {
      yield OrderListState.failure(error: e.message, hasConnectivity: false);
    }
  }
}
