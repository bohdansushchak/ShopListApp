library login_state;

import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  bool get isHasToken;
  bool get isLoading;
  String get error;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initial(bool hasSavedToken) {
    return LoginState((b) => b
          ..isLoading = false
          ..error = ''
          ..isHasToken = hasSavedToken
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
      ..isHasToken = true
      );
  }

  factory LoginState.success(String token) {
    return LoginState((b) => b
      ..isLoading = false
      ..error = ''
      ..isHasToken = token.isNotEmpty);
  }
}
