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

  void removeProduct(String product) {
    dispatch(RemoveProductevent((b) => b..product = product));
  }

  void saveOrder(
      {@required String orderPrice,
      @required String shopName,
      @required String location,
      @required DateTime date}) {
    assert(shopName != null);
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

    if (event is RemoveProductevent) yield* _removeProduct(event);
  }

  Stream<AddProductsState> _addProduct(AddProductEvent event) async* {
    if (event.product.isNotEmpty) {
      var builderList = currentState.products.toBuilder();
      builderList.add(event.product);

      yield AddProductsState.productsUpdate(builderList.build());
    } else
      yield AddProductsState.failure(currentState.products,
          error: '', productError: 'Product can\'t be empty');
  }

  Stream<AddProductsState> _saveOrder(SaveOrderEvent event) async* {
    try {
      yield AddProductsState.loading(products: currentState.products);

      if (event.price.isNotEmpty && currentState.products.length > 0) {
        final priceParsed = double.tryParse(event.price) != null
            ? double.parse(event.price)
            : 0.0;

        final isOrderCreated = await _repository.saveOrder(
            price: priceParsed,
            shopName: event.shopName,
            date: event.date,
            location: event.location,
            products: currentState.products);
            
        if (isOrderCreated)
          yield AddProductsState.orderCreated(currentState.products);
        else
          yield AddProductsState.failure(currentState.products,
              error: "Order has not created");
      } else {
        final priceError = event.price.isEmpty ? "Enter a price" : null;

        final productError =
            currentState.products.length == 0 ? "Please add a product" : '';
        yield AddProductsState.failure(currentState.products,
            productError: productError, priceError: priceError);
      }
    } on ServerException catch (e) {
      yield AddProductsState.failure(currentState.products, error: e.message);
    }
  }

  Stream<AddProductsState> _removeProduct(RemoveProductevent event) async* {
    final builderList = currentState.products.toBuilder();
    builderList.remove(event.product);

    yield AddProductsState.productsUpdate(builderList.build());
  }
}
