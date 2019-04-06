import 'package:flutter/material.dart';
import 'package:shop_list_app/dependency_container.dart';
import 'package:shop_list_app/ui/login/login_page.dart';
import 'package:shop_list_app/ui/order_list/order_list_page.dart';
import 'package:shop_list_app/ui/splash/splash_page.dart';

void main() {
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/OrderListPage": (BuildContext context) => OrderListPage(),
        "/LoginPage": (BuildContext context) => LoginPage()
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
