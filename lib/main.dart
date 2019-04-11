import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_list_app/dependency_container.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/locale/locales.dart';
import 'package:shop_list_app/ui/create_order_shop_data/shop_data.dart';
import 'package:shop_list_app/ui/login/login_page.dart';
import 'package:shop_list_app/ui/order_list/order_list_page.dart';
import 'package:shop_list_app/ui/splash/splash_page.dart';

const ORDER_LIST_PAGE_ROUTE = "/OrderListPage";
const LOGIN_PAGE_ROUTE = "/LoginPage";
const SHOP_DATA_PAGE_ROUTE = "/OrderListPage/ShopDataPage/";
//const ADD_PRODUCTS_PAGE_ROUTE = "/OrderListPage/ShopDataPage/AddProductsPage/";
//const ORDER_DETAIL_PAGE_ROUTE = "/OrderListPage/OrderDetailPage/";

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
      localizationsDelegates: [
        AppLocalizationDelegates(),
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('pl', ''),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context).appName,
      routes: <String, WidgetBuilder>{
        ORDER_LIST_PAGE_ROUTE: (BuildContext context) => OrderListPage(),
        LOGIN_PAGE_ROUTE: (BuildContext context) => LoginPage(),
        SHOP_DATA_PAGE_ROUTE: (BuildContext context) => ShopDataPage(),
        //ADD_PRODUCTS_PAGE_ROUTE: (BuildContext context) => AddProductsPage(),
        //ORDER_DETAIL_PAGE_ROUTE: (BuildContext context) => OrderDetailPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
          cardColor: COLOR_ITEM_BACKGROUND,
          primaryColor: COLOR_PRIMARY,
          accentColor: COLOR_ACCENT,
          primaryColorDark: COLOR_PRIMARY_DARK,
          primarySwatch: Colors.blue,
          hintColor: COLOR_TEXT_HINT),
      home: SplashScreen(),
    );
  }
}
