// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResult> _$loginResultSerializer = new _$LoginResultSerializer();

class _$LoginResultSerializer implements StructuredSerializer<LoginResult> {
  @override
  final Iterable<Type> types = const [LoginResult, _$LoginResult];
  @override
  final String wireName = 'LoginResult';

  @override
  Iterable serialize(Serializers serializers, LoginResult object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  LoginResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new LoginResultBuilder().build();
  }
}

class _$LoginResult extends LoginResult {
  factory _$LoginResult([void updates(LoginResultBuilder b)]) =>
      (new LoginResultBuilder()..update(updates)).build();

  _$LoginResult._() : super._();

  @override
  LoginResult rebuild(void updates(LoginResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResultBuilder toBuilder() => new LoginResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResult;
  }

  @override
  int get hashCode {
    return 212219818;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LoginResult').toString();
  }
}

class LoginResultBuilder implements Builder<LoginResult, LoginResultBuilder> {
  _$LoginResult _$v;

  LoginResultBuilder();

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
    final _$result = _$v ?? new _$LoginResult._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
