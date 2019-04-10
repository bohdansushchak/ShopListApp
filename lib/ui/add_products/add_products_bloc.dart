import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/ui/add_products/add_products_event.dart';
import 'package:shop_list_app/ui/add_products/add_products_state.dart';
import 'package:shop_list_app/internal/exeptions.dart';

class AddProductsBloc extends Bloc<ProductsEvent, AddProductsState> {
  final Repository _repository;

  AddProductsBloc(this._repository);
  @override
  get initialState => AddProductsState.initial();

  void addProduct(String product) {
    dispatch(AddProductEvent((b) => b..product = product));
  }

  void saveOrder(
      {@required double orderPrice,
      @required String shopName,
      @required String location,
      @required DateTime date}) {
    assert(shopName != null);
    assert(orderPrice != null);
    assert(location != null);
    assert(date != null);
    dispatch(SaveOrderEvent((b) => b
      ..shopName = shopName
      ..location = location
      ..date = date
      ..price = orderPrice));
  }

  @override
  Stream<AddProductsState> mapEventToState(ProductsEvent event) async* {
    if (event is AddProductEvent) yield* _addProduct(event);

    if (event is SaveOrderEvent) yield* _saveOrder(event);
  }

  Stream<AddProductsState> _addProduct(AddProductEvent event) async* {
    if (event.product.isNotEmpty) {
      var builderList = currentState.products.toBuilder();
      builderList.add(event.product);

      yield AddProductsState.productAdded(builderList.build());
    } else
      yield AddProductsState.failure(currentState.products,
          productError: 'Product can\'t be empty');
  }

  Stream<AddProductsState> _saveOrder(SaveOrderEvent event) async* {
    try {
      yield AddProductsState.loading(products: currentState.products);

      final isOrderCreated = await _repository.saveOrder(
          price: event.price,
          shopName: event.shopName,
          date: event.date,
          location: event.location,
          products: currentState.products);

      if (isOrderCreated)
        yield AddProductsState.orderCreated(currentState.products);
    } on ServerException catch (e) {
      yield AddProductsState.failure(currentState.products, error: e.message);
    }
  }
}
