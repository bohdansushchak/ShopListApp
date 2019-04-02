import 'package:flutter/material.dart';
import 'package:shop_list_app/data/network/shop_list_data_source.dart';

import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  final Widget child;

  LoginPage({Key key, this.child}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final sfg = kiwi.Container().resolve<ShopListDataSource>();

  void subtractNumbers() async {
    var sdff = await sfg.login("bso@gmail.com", "dfgfdg");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("images/background.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CustomTextField(
              hint: "E-mail",
              keyboardType: TextInputType.emailAddress,
            ),
            new PasswordTextField(hint: "Hasło"),
            new MyButton(onPressed: subtractNumbers, buttonText: "LOG IN")
          ],
        ),
      ),
    ));
  }
}
