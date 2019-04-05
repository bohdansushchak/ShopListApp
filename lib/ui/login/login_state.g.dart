// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginState extends LoginState {
  @override
  final bool isHasToken;
  @override
  final bool isLoading;
  @override
  final String error;

  factory _$LoginState([void updates(LoginStateBuilder b)]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._({this.isHasToken, this.isLoading, this.error}) : super._() {
    if (isHasToken == null) {
      throw new BuiltValueNullFieldError('LoginState', 'isHasToken');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('LoginState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('LoginState', 'error');
    }
  }

  @override
  LoginState rebuild(void updates(LoginStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        isHasToken == other.isHasToken &&
        isLoading == other.isLoading &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isHasToken.hashCode), isLoading.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')
          ..add('isHasToken', isHasToken)
          ..add('isLoading', isLoading)
          ..add('error', error))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState _$v;

  bool _isHasToken;
  bool get isHasToken => _$this._isHasToken;
  set isHasToken(bool isHasToken) => _$this._isHasToken = isHasToken;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    if (_$v != null) {
      _isHasToken = _$v.isHasToken;
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginState;
  }

  @override
  void update(void updates(LoginStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginState build() {
    final _$result = _$v ??
        new _$LoginState._(
            isHasToken: isHasToken, isLoading: isLoading, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
