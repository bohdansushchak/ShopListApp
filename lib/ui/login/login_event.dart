library login_event;

import 'package:built_value/built_value.dart';

part 'login_event.g.dart';

abstract class LoginPageEvent {}

abstract class LoginEvent extends LoginPageEvent
    implements Built<LoginEvent, LoginEventBuilder> {
  String get email;
  String get password;

  LoginEvent._();

  factory LoginEvent([updates(LoginEventBuilder b)]) = _$LoginEvent;
}

class LogOutEvent extends LoginPageEvent {}
