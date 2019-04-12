import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_list_app/data/network/shop_list_data_source.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/internal/token_manager.dart';
import 'package:shop_list_app/ui/add_products/add_products_bloc.dart';
import 'package:shop_list_app/ui/login/login_bloc.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_bloc.dart';
import 'package:shop_list_app/ui/order_list/order_list_bloc.dart';
import 'package:connectivity/connectivity.dart';


void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerSingleton((c) => Connectivity())
    ..registerSingleton((c) => SharedPreferences.getInstance())
    ..registerSingleton((c) => TokenManager(c.resolve()))
    ..registerFactory((c) => ShopListDataSource(c.resolve(), c.resolve()))
    ..registerFactory((c) => Repository(c.resolve(), c.resolve()))
    ..registerFactory((c) => LoginBloc(c.resolve()))
    ..registerFactory((c) => OrderListBloc(c.resolve()))
    ..registerFactory((c) => AddProductsBloc(c.resolve()))
    ..registerFactory((c) => OrderDetailBloc(c.resolve()));
}
