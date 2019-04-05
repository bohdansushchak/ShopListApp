import 'package:built_collection/built_collection.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/network/shop_list_data_source.dart';
import 'package:shop_list_app/internal/token_manager.dart';

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
    final ordersResult = await _dataSource.getOrders(token: token, offset: offset, limit: limit);

    var ordersBuiltList = BuiltList<Order>(ordersResult);
    return ordersBuiltList;
  }
}
