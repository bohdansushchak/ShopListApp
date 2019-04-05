import 'package:flutter/material.dart';

import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/ui/login/login_bloc.dart';
import 'package:shop_list_app/ui/login/login_state.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_list_app/ui/widget/decorated_container.dart';
import 'package:shop_list_app/ui/widget/password_field.dart';

class LoginPage extends StatefulWidget {
  final Widget child;

  LoginPage({Key key, this.child}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginBloc = kiwi.Container().resolve<LoginBloc>();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  void _login() {
    var email = emailTextController.text;
    var password = passwordTextController.text;

    _loginBloc.logIn(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _loginBloc,
      child: _buildScafold(),
    );
  }

  Scaffold _buildScafold() {
    return Scaffold(
        body: new DecoratedContainer(
      child: new Stack(children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CustomTextField(
                hint: "E-mail",
                keyboardType: TextInputType.emailAddress,
                controller: emailTextController,
              ),
              new PasswordTextField(
                hint: "Hasło",
                controller: passwordTextController,
              ),
              new MyButton(onPressed: _login, buttonText: "LOG IN"),
            ],
          ),
        ),
        new Align(
            child: new BlocBuilder(
                bloc: _loginBloc,
                builder: (context, LoginState state) {
                  if (state.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return new Container();
                }),
            alignment: FractionalOffset.center)
      ]),
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _loginBloc.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
  }
}
