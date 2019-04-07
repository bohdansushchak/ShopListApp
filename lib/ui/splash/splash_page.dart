import 'dart:async';

import 'package:flutter/material.dart';

import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/internal/token_manager.dart';

class SplashScreen extends StatefulWidget {
  final Widget child;

  SplashScreen({Key key, this.child}) : super(key: key);

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _tokenManager = kiwi.Container().resolve<TokenManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: COLOR_ACCENT,
                          radius: 50.0,
                          child: Icon(
                            Icons.shopping_cart,
                            size: 50.0,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text("Shop app",
                            style: TextStyle(
                                color: COLOR_ACCENT,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    userIsLogedIn();
  }

  void userIsLogedIn() async {
    final hasToken = await _tokenManager.hasSavedToken();

    Timer(
        Duration(seconds: 1),
        () => {
              hasToken
                  ? Navigator.of(context).pushReplacementNamed('/OrderListPage')
                  : Navigator.of(context).pushReplacementNamed('/LoginPage')
            });
  }
}
