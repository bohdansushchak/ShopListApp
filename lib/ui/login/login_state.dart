library login_state;

import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class BaseState {
  bool get isHasInternetConnection;
  bool get isLoading;
  String get error;
}

abstract class LoginState
    implements Built<LoginState, LoginStateBuilder>, BaseState {
  bool get isHasToken;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  bool get isSuccesful => error.isEmpty && !isLoading && isHasToken;

  bool get isHasError => error.isNotEmpty && !isLoading && !isHasToken;

  factory LoginState.initial() {
    return LoginState((b) => b
      ..isLoading = false
      ..error = ''
      ..isHasToken = false
      ..isHasInternetConnection = true);
  }

  factory LoginState.loading() {
    return LoginState((b) => b
      ..isLoading = true
      ..error = ''
      ..isHasToken = false
      ..isHasInternetConnection = true);
  }

  factory LoginState.failure(String error, [bool isHasConnectivity = true]) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = error
      ..isHasToken = false
      ..isHasInternetConnection = isHasConnectivity);
  }

  factory LoginState.success(String token) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = ''
      ..isHasToken = token.isNotEmpty
      ..isHasInternetConnection = true);
  }
}
