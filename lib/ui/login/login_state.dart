library login_state;

import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  bool get isHasToken;
  bool get isLoading;
  bool get isLoggedIn;
  String get error;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initial() {
    return LoginState((b) => b
          ..isLoading = false
          ..error = ''
          ..isLoggedIn = false
          ..isHasToken = false //TODO: fix this get from pref
        );
  }

  factory LoginState.loading() {
    return LoginState((b) => b
          ..isLoading = true
          ..error = ''
          ..isLoggedIn = false
          ..isHasToken = false //TODO: fix this get from pref
        );
  }

    factory LoginState.failure(String error) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = error
      ..isLoggedIn = true
      ..isHasToken = true
      );
  }

  factory LoginState.success(String token) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = ''
      ..isLoggedIn = true
      ..isHasToken = true);
  }
}
