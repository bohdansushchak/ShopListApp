import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_list_app/dependency_container.dart';
import 'package:shop_list_app/ui/add_products/add_products_page.dart';
import 'package:shop_list_app/ui/create_order_shop_data/shop_data.dart';
import 'package:shop_list_app/ui/login/login_page.dart';
import 'package:shop_list_app/ui/order_list/order_list_page.dart';
import 'package:shop_list_app/ui/splash/splash_page.dart';

//const ORDER_DETAIL_PAGE_ROUTE = "/OrderListPage/OrderDetailPage/";
const ORDER_LIST_PAGE_ROUTE = "/OrderListPage";
const LOGIN_PAGE_ROUTE = "/LoginPage";
const SHOP_DATA_PAGE_ROUTE = "/OrderListPage/ShopDataPage/";
const ADD_PRODUCTS_PAGE_ROUTE = "/OrderListPage/ShopDataPage/AddProductsPage/";

void main() {
  initKiwi();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        ORDER_LIST_PAGE_ROUTE: (BuildContext context) => OrderListPage(),
        LOGIN_PAGE_ROUTE: (BuildContext context) => LoginPage(),
        SHOP_DATA_PAGE_ROUTE: (BuildContext context) => ShopDataPage(),
        ADD_PRODUCTS_PAGE_ROUTE: (BuildContext context) => AddProductsPage(),
        //ORDER_DETAIL_PAGE_ROUTE: (BuildContext context) => OrderDetailPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
