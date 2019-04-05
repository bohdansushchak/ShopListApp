import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:shop_list_app/data/network/shop_list_data_source.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/ui/login/login_bloc.dart';

void initKiwi() {

  kiwi.Container()
  ..registerInstance(http.Client())
  ..registerFactory((c) => ShopListDataSource(c.resolve()))
  ..registerFactory((c) => Repository(c.resolve()))
  ..registerFactory((c) => LoginBloc(c.resolve()));

}