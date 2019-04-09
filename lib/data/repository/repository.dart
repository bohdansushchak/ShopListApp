import 'package:built_collection/built_collection.dart';
import 'package:shop_list_app/data/model/add_order_model.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/network/shop_list_data_source.dart';
import 'package:shop_list_app/internal/token_manager.dart';
import 'package:shop_list_app/internal/exeptions.dart';

class Repository {
  ShopListDataSource _dataSource;
  TokenManager _tokenManager;

  Repository(this._dataSource, this._tokenManager);

  Future<LoginResult> login(String email, String password) async {
    final loginResult = await _dataSource.login(email, password);
    await _tokenManager.saveToken(loginResult);
    return loginResult;
  }

  Future<BuiltList<Order>> getOrders(int offset, int limit) async {
    final token = await _tokenManager.getSavedToken();

    final ordersResult =
        await _dataSource.getOrders(token: token, offset: offset, limit: limit);

    var ordersBuiltList = BuiltList<Order>(ordersResult);
    return ordersBuiltList;
  }

  Future<bool> _refreshToken(String token) async {
    final result = await _dataSource.refreshToken(token);
    return result;
  }

  Future<bool> saveOrder(
      {BuiltList<String> products,
      String shopName,
      String location,
      double price,
      DateTime date}) async {
        
    final token = await _tokenManager.getSavedToken();
    final model = AddOrderModel(
      (b) => b
        ..date = date.toString()
        ..location = location
        ..items.replace(products)
        ..apiToken = token
        ..shopName = shopName,
    );

    final result = await _dataSource.addOrder(model);

    return result;
  }

  Future<T> _saveExecute<T>(String token, Future fun) async {
    try {
      return await fun;
    } on UnauthorizedException {
      await _refreshToken(token);
      return await fun;
    }
  }
}
