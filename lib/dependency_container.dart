import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:shop_list_app/data/network/shop_list_data_source.dart';

void initKiwi() {

  kiwi.Container()
  ..registerInstance(http.Client())
  ..registerFactory((c) => ShopListDataSource(c.resolve()));

}