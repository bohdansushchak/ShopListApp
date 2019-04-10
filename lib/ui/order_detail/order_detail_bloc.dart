import 'package:bloc/bloc.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/internal/exeptions.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_event.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_state.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final Repository _repository;

  OrderDetailBloc(this._repository);

  void putOrder(Order order) {
    dispatch(OrderDetainInitiated((b) => b..order = order));
  }

  void inviteOrder(int id) {
    dispatch(InviteOrderDetail((b) => b..id = id));
  }

  @override
  OrderDetailState get initialState {
    return OrderDetailState.initial(null);
  }

  @override
  Stream<OrderDetailState> mapEventToState(OrderDetailEvent event) async* {
    if (event is InviteOrderDetail) yield* _inviteOrder(event);
  }

  Stream<OrderDetailState> _inviteOrder(InviteOrderDetail event) async* {
    try {
      final resultUrl = await _repository.generateUrlToOrdfer(event.id);

      yield OrderDetailState.succesful(resultUrl, currentState.order);
    } on ServerException catch (e) {
      yield OrderDetailState.failure(e.message, currentState.order);
    }
  }
}
