// GENERATED CODE - DO NOT MODIFY BY HAND

part of token_expires;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TokenExpires> _$tokenExpiresSerializer =
    new _$TokenExpiresSerializer();

class _$TokenExpiresSerializer implements StructuredSerializer<TokenExpires> {
  @override
  final Iterable<Type> types = const [TokenExpires, _$TokenExpires];
  @override
  final String wireName = 'TokenExpires';

  @override
  Iterable serialize(Serializers serializers, TokenExpires object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'timezone_type',
      serializers.serialize(object.timeZoneType,
          specifiedType: const FullType(int)),
      'timezone',
      serializers.serialize(object.timeZone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TokenExpires deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenExpiresBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timezone_type':
          result.timeZoneType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'timezone':
          result.timeZone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TokenExpires extends TokenExpires {
  @override
  final String date;
  @override
  final int timeZoneType;
  @override
  final String timeZone;

  factory _$TokenExpires([void updates(TokenExpiresBuilder b)]) =>
      (new TokenExpiresBuilder()..update(updates)).build();

  _$TokenExpires._({this.date, this.timeZoneType, this.timeZone}) : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('TokenExpires', 'date');
    }
    if (timeZoneType == null) {
      throw new BuiltValueNullFieldError('TokenExpires', 'timeZoneType');
    }
    if (timeZone == null) {
      throw new BuiltValueNullFieldError('TokenExpires', 'timeZone');
    }
  }

  @override
  TokenExpires rebuild(void updates(TokenExpiresBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenExpiresBuilder toBuilder() => new TokenExpiresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenExpires &&
        date == other.date &&
        timeZoneType == other.timeZoneType &&
        timeZone == other.timeZone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, date.hashCode), timeZoneType.hashCode), timeZone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokenExpires')
          ..add('date', date)
          ..add('timeZoneType', timeZoneType)
          ..add('timeZone', timeZone))
        .toString();
  }
}

class TokenExpiresBuilder
    implements Builder<TokenExpires, TokenExpiresBuilder> {
  _$TokenExpires _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _timeZoneType;
  int get timeZoneType => _$this._timeZoneType;
  set timeZoneType(int timeZoneType) => _$this._timeZoneType = timeZoneType;

  String _timeZone;
  String get timeZone => _$this._timeZone;
  set timeZone(String timeZone) => _$this._timeZone = timeZone;

  TokenExpiresBuilder();

  TokenExpiresBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _timeZoneType = _$v.timeZoneType;
      _timeZone = _$v.timeZone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenExpires other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TokenExpires;
  }

  @override
  void update(void updates(TokenExpiresBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TokenExpires build() {
    final _$result = _$v ??
        new _$TokenExpires._(
            date: date, timeZoneType: timeZoneType, timeZone: timeZone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
