import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/internal/exeptions.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_event.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_state.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  static const platform = const MethodChannel('flutter.io/invite');
  final Repository _repository;

  OrderDetailBloc(this._repository);

  void initialOrder(Order order) {
    dispatch(OrderDetailInitiated((b) => b..order.replace(order)));
  }

  void inviteOrder() {
    dispatch(InviteOrderDetail((b) => b..id = currentState.order.id));
  }

  @override
  OrderDetailState get initialState {
    return OrderDetailState.initial();
  }

  @override
  Stream<OrderDetailState> mapEventToState(OrderDetailEvent event) async* {
    if (event is InviteOrderDetail) yield* _inviteOrder(event);

    if (event is OrderDetailInitiated)
      yield OrderDetailState.initialOrder(event.order);
  }

  Stream<OrderDetailState> _inviteOrder(InviteOrderDetail event) async* {
    try {
      yield OrderDetailState.loading(currentState.order);

      final resultUrl = await _repository.generateUrlToOrdfer(event.id);

      platform.invokeMethod('inviteMethod', {"urlToInvite": resultUrl});

      yield OrderDetailState.succesful(resultUrl, currentState.order);
    } on ServerException catch (e) {
      yield OrderDetailState.failure(e.message, currentState.order);
    } on PlatformException catch (e) {
      yield OrderDetailState.failure(e.message, currentState.order);
    }
  }
}
