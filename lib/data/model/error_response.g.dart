// GENERATED CODE - DO NOT MODIFY BY HAND

part of error_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ErrorResponse> _$errorResponseSerializer =
    new _$ErrorResponseSerializer();

class _$ErrorResponseSerializer implements StructuredSerializer<ErrorResponse> {
  @override
  final Iterable<Type> types = const [ErrorResponse, _$ErrorResponse];
  @override
  final String wireName = 'ErrorResponse';

  @override
  Iterable serialize(Serializers serializers, ErrorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ErrorResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorResponse extends ErrorResponse {
  @override
  final int code;
  @override
  final String message;

  factory _$ErrorResponse([void updates(ErrorResponseBuilder b)]) =>
      (new ErrorResponseBuilder()..update(updates)).build();

  _$ErrorResponse._({this.code, this.message}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('ErrorResponse', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('ErrorResponse', 'message');
    }
  }

  @override
  ErrorResponse rebuild(void updates(ErrorResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponseBuilder toBuilder() => new ErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponse &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorResponse')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class ErrorResponseBuilder
    implements Builder<ErrorResponse, ErrorResponseBuilder> {
  _$ErrorResponse _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ErrorResponseBuilder();

  ErrorResponseBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ErrorResponse;
  }

  @override
  void update(void updates(ErrorResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorResponse build() {
    final _$result = _$v ?? new _$ErrorResponse._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
