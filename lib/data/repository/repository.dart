import 'package:built_collection/built_collection.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/network/shop_list_data_source.dart';

class Repository {
  ShopListDataSource _dataSource;

  Repository(this._dataSource);

  String get token => _getSavedToken();

  Future<LoginResult> login(String email, String password) async {
    final loginResult = await _dataSource.login(email, password);
    _saveToken(loginResult.apiToken);
    return loginResult;
  }

  void _saveToken(String apiToken) {}

  String _getSavedToken() {
    return "";
  }

  Future<BuiltList<Order>> getOrders() async {
    final ordersResult = await _dataSource.getOrders(token: token);

    var ordersBuiltList = BuiltList<Order>(ordersResult);
    return ordersBuiltList;
  }
}
