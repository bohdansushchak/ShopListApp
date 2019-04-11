library login_state;

import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  bool get isHasToken;
  bool get isLoading;
  String get error;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  bool get isSuccesful => error.isEmpty && !isLoading && isHasToken;

  bool get isHasError => error.isNotEmpty && !isLoading && !isHasToken;

  factory LoginState.initial() {
    return LoginState((b) => b
          ..isLoading = false
          ..error = ''
          ..isHasToken = false
        );
  }

  factory LoginState.loading() {
    return LoginState((b) => b
          ..isLoading = true
          ..error = ''
          ..isHasToken = false 
        );
  }

    factory LoginState.failure(String error) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = error
      ..isHasToken = false
      );
  }

  factory LoginState.success(String token) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = ''
      ..isHasToken = token.isNotEmpty);
  }
}
