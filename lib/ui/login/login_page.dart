import 'package:flutter/material.dart';

import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/locale/locales.dart';
import 'package:shop_list_app/main.dart';
import 'package:shop_list_app/ui/login/login_bloc.dart';
import 'package:shop_list_app/ui/login/login_state.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_list_app/ui/widget/decorated_container.dart';
import 'package:shop_list_app/ui/widget/password_field.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginBloc = kiwi.Container().resolve<LoginBloc>();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  String _emailError;
  String _passwordError;

  void _login() {
    var email = emailTextController.text;
    var password = passwordTextController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      _loginBloc.logIn(email, password);
    } else {
      setState(() {
        _emailError =
            email.isEmpty ? AppLocalizations.of(context).errEmailIsEmpty : null;

        _passwordError = password.isEmpty
            ? AppLocalizations.of(context).errPasswordIsEmpty
            : null;
      });
    }
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
        resizeToAvoidBottomPadding: false,
        body: new DecoratedContainer(
            child: new BlocListener(
                bloc: _loginBloc,
                listener: (context, state) => _blocListener(context, state),
                child: new Stack(children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            child: new CustomTextField(
                              hint: AppLocalizations.of(context).hintEmail,
                              keyboardType: TextInputType.emailAddress,
                              controller: emailTextController,
                              errorText: _emailError,
                            )),
                        new Padding(
                            child: new PasswordTextField(
                              hint: AppLocalizations.of(context).hintPassword,
                              controller: passwordTextController,
                              error: _passwordError,
                            ),
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 10)),
                        new MyButton(
                          onPressed: _login,
                          buttonText: AppLocalizations.of(context).btnLogin,
                          padding:
                              EdgeInsets.only(left: 35.0, right: 35, top: 45.0),
                        ),
                      ],
                    ),
                  ),
                  new Align(
                      child: new BlocBuilder(
                          bloc: _loginBloc,
                          builder: (context, LoginState state) {
                            if (state.isLoading) {
                              return Center(child: CircularProgressIndicator());
                            }
                            return new Container();
                          }),
                      alignment: FractionalOffset.center)
                ]))));
  }

  void _blocListener(BuildContext context, LoginState state) {
    if (!state.isHasInternetConnection) {
      showNoConnectivityDialog(context,
          title: AppLocalizations.of(context).errTitleDialog,
          message: AppLocalizations.of(context).errCheckInternetConn);
    } else if (state.isHasError) {
      showMyAlertDialog(context,
          title: AppLocalizations.of(context).errTitleDialog,
          content: state.error);
    }
    if (state.isSuccesful) {
      Navigator.of(context).pushReplacementNamed(ORDER_LIST_PAGE_ROUTE);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _loginBloc.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
  }
}
