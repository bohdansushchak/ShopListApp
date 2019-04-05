// GENERATED CODE - DO NOT MODIFY BY HAND

part of response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyResponse> _$myResponseSerializer = new _$MyResponseSerializer();

class _$MyResponseSerializer implements StructuredSerializer<MyResponse> {
  @override
  final Iterable<Type> types = const [MyResponse, _$MyResponse];
  @override
  final String wireName = 'MyResponse';

  @override
  Iterable serialize(Serializers serializers, MyResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data, specifiedType: parameterT));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(ErrorResponse)));
    }

    return result;
  }

  @override
  MyResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new MyResponseBuilder<Object>()
        : serializers.newBuilder(specifiedType) as MyResponseBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(ErrorResponse)) as ErrorResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$MyResponse<T> extends MyResponse<T> {
  @override
  final T data;
  @override
  final ErrorResponse error;

  factory _$MyResponse([void updates(MyResponseBuilder<T> b)]) =>
      (new MyResponseBuilder<T>()..update(updates)).build();

  _$MyResponse._({this.data, this.error}) : super._() {
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('MyResponse', 'T');
    }
  }

  @override
  MyResponse<T> rebuild(void updates(MyResponseBuilder<T> b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MyResponseBuilder<T> toBuilder() => new MyResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyResponse && data == other.data && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyResponse')
          ..add('data', data)
          ..add('error', error))
        .toString();
  }
}

class MyResponseBuilder<T>
    implements Builder<MyResponse<T>, MyResponseBuilder<T>> {
  _$MyResponse<T> _$v;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  ErrorResponseBuilder _error;
  ErrorResponseBuilder get error =>
      _$this._error ??= new ErrorResponseBuilder();
  set error(ErrorResponseBuilder error) => _$this._error = error;

  MyResponseBuilder();

  MyResponseBuilder<T> get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _error = _$v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyResponse<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MyResponse<T>;
  }

  @override
  void update(void updates(MyResponseBuilder<T> b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MyResponse<T> build() {
    _$MyResponse<T> _$result;
    try {
      _$result =
          _$v ?? new _$MyResponse<T>._(data: data, error: _error?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
