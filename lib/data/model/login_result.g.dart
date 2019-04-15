// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResult extends LoginResult {
  @override
  final int id;
  @override
  final String email;
  @override
  final String updatedAt;
  @override
  final String createdAt;
  @override
  final String apiToken;
  @override
  final TokenExpires tokenExpires;

  factory _$LoginResult([void updates(LoginResultBuilder b)]) =>
      (new LoginResultBuilder()..update(updates)).build();

  _$LoginResult._(
      {this.id,
      this.email,
      this.updatedAt,
      this.createdAt,
      this.apiToken,
      this.tokenExpires})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LoginResult', 'id');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('LoginResult', 'email');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('LoginResult', 'updatedAt');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('LoginResult', 'createdAt');
    }
    if (apiToken == null) {
      throw new BuiltValueNullFieldError('LoginResult', 'apiToken');
    }
    if (tokenExpires == null) {
      throw new BuiltValueNullFieldError('LoginResult', 'tokenExpires');
    }
  }

  @override
  LoginResult rebuild(void updates(LoginResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResultBuilder toBuilder() => new LoginResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResult &&
        id == other.id &&
        email == other.email &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        apiToken == other.apiToken &&
        tokenExpires == other.tokenExpires;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), email.hashCode),
                    updatedAt.hashCode),
                createdAt.hashCode),
            apiToken.hashCode),
        tokenExpires.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResult')
          ..add('id', id)
          ..add('email', email)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt)
          ..add('apiToken', apiToken)
          ..add('tokenExpires', tokenExpires))
        .toString();
  }
}

class LoginResultBuilder implements Builder<LoginResult, LoginResultBuilder> {
  _$LoginResult _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _apiToken;
  String get apiToken => _$this._apiToken;
  set apiToken(String apiToken) => _$this._apiToken = apiToken;

  TokenExpiresBuilder _tokenExpires;
  TokenExpiresBuilder get tokenExpires =>
      _$this._tokenExpires ??= new TokenExpiresBuilder();
  set tokenExpires(TokenExpiresBuilder tokenExpires) =>
      _$this._tokenExpires = tokenExpires;

  LoginResultBuilder();

  LoginResultBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _email = _$v.email;
      _updatedAt = _$v.updatedAt;
      _createdAt = _$v.createdAt;
      _apiToken = _$v.apiToken;
      _tokenExpires = _$v.tokenExpires?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResult;
  }

  @override
  void update(void updates(LoginResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResult build() {
    _$LoginResult _$result;
    try {
      _$result = _$v ??
          new _$LoginResult._(
              id: id,
              email: email,
              updatedAt: updatedAt,
              createdAt: createdAt,
              apiToken: apiToken,
              tokenExpires: tokenExpires.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tokenExpires';
        tokenExpires.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
