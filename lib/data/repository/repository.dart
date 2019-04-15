import 'package:built_collection/built_collection.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:meta/meta.dart';
import 'package:shop_list_app/data/model/add_order_model.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/network/shop_list_data_source.dart';
import 'package:shop_list_app/internal/exeptions.dart';
import 'package:shop_list_app/internal/token_manager.dart';
import 'package:intl/intl.dart';

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
    final isTokenValid = await _tokenManager.isTokenValid();
    if (!isTokenValid) refreshToken();
    final ordersResult =
        await _dataSource.getOrders(token: token, offset: offset, limit: limit);

    var ordersBuiltList = BuiltList<Order>(ordersResult);
    return ordersBuiltList;
  }

  Future refreshToken() async {
    final token = await _tokenManager.getSavedToken();
    final isTokenRefreshed = await _dataSource.refreshToken(token);
    if (isTokenRefreshed)
      await _tokenManager.refreshToken();
    else
      throw UnauthorizedException();
  }

  Future<bool> saveOrder(
      {@required BuiltList<String> products,
      @required String shopName,
      @required String location,
      @required double price,
      @required DateTime date,
      String locale}) async {
    final token = await _tokenManager.getSavedToken();

    initializeDateFormatting(locale);
    final formattedDate =
        new DateFormat('yyyy-MM-dd HH:mm:ss', locale).format(date);

    final model = AddOrderModel((b) => b
      ..date = formattedDate
      ..location = location
      ..items.replace(products)
      ..apiToken = token
      ..shopName = shopName
      ..price = price);

    final isTokenValid = await _tokenManager.isTokenValid();
    if (!isTokenValid) refreshToken();

    final result = await _dataSource.addOrder(model);

    return result;
  }

  Future<String> generateUrlToOrdfer(int orderId) async {
    final token = await _tokenManager.getSavedToken();
    final isTokenValid = await _tokenManager.isTokenValid();
    if (!isTokenValid) refreshToken();
    final result = await _dataSource.generateLink(token, orderId);
    return result;
  }
}
