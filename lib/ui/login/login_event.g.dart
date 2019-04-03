// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginEvent extends LoginEvent {
  @override
  final String email;
  @override
  final String password;

  factory _$LoginEvent([void updates(LoginEventBuilder b)]) =>
      (new LoginEventBuilder()..update(updates)).build();

  _$LoginEvent._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('LoginEvent', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('LoginEvent', 'password');
    }
  }

  @override
  LoginEvent rebuild(void updates(LoginEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginEventBuilder toBuilder() => new LoginEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginEvent &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginEvent')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LoginEventBuilder implements Builder<LoginEvent, LoginEventBuilder> {
  _$LoginEvent _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginEventBuilder();

  LoginEventBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginEvent;
  }

  @override
  void update(void updates(LoginEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginEvent build() {
    final _$result =
        _$v ?? new _$LoginEvent._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
