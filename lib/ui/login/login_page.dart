import 'package:flutter/material.dart';

import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/ui/login/login_bloc.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  final Widget child;

  LoginPage({Key key, this.child}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginBloc = kiwi.Container().resolve<LoginBloc>();

  void _login() {
    _loginBloc.logIn("skdfgomfdgmail.com", "123Qwer");
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(bloc: _loginBloc, child: _buildScafold());
  }

  @override
  void dispose() {
    super.dispose();
    _loginBloc.dispose();
  }

  Scaffold _buildScafold() {
    return Scaffold(
        body: new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/background.png"),
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
            new MyButton(onPressed: _login, buttonText: "LOG IN")
          ],
        ),
      ),
    ));
  }
}
