// GENERATED CODE - DO NOT MODIFY BY HAND

part of order_detail_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderDetailState extends OrderDetailState {
  @override
  final Order order;
  @override
  final String urlToInvite;
  @override
  final bool isHasInternetConnection;
  @override
  final bool isLoading;
  @override
  final String error;

  factory _$OrderDetailState([void updates(OrderDetailStateBuilder b)]) =>
      (new OrderDetailStateBuilder()..update(updates)).build();

  _$OrderDetailState._(
      {this.order,
      this.urlToInvite,
      this.isHasInternetConnection,
      this.isLoading,
      this.error})
      : super._() {
    if (isHasInternetConnection == null) {
      throw new BuiltValueNullFieldError(
          'OrderDetailState', 'isHasInternetConnection');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('OrderDetailState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('OrderDetailState', 'error');
    }
  }

  @override
  OrderDetailState rebuild(void updates(OrderDetailStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailStateBuilder toBuilder() =>
      new OrderDetailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailState &&
        order == other.order &&
        urlToInvite == other.urlToInvite &&
        isHasInternetConnection == other.isHasInternetConnection &&
        isLoading == other.isLoading &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, order.hashCode), urlToInvite.hashCode),
                isHasInternetConnection.hashCode),
            isLoading.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetailState')
          ..add('order', order)
          ..add('urlToInvite', urlToInvite)
          ..add('isHasInternetConnection', isHasInternetConnection)
          ..add('isLoading', isLoading)
          ..add('error', error))
        .toString();
  }
}

class OrderDetailStateBuilder
    implements Builder<OrderDetailState, OrderDetailStateBuilder> {
  _$OrderDetailState _$v;

  OrderBuilder _order;
  OrderBuilder get order => _$this._order ??= new OrderBuilder();
  set order(OrderBuilder order) => _$this._order = order;

  String _urlToInvite;
  String get urlToInvite => _$this._urlToInvite;
  set urlToInvite(String urlToInvite) => _$this._urlToInvite = urlToInvite;

  bool _isHasInternetConnection;
  bool get isHasInternetConnection => _$this._isHasInternetConnection;
  set isHasInternetConnection(bool isHasInternetConnection) =>
      _$this._isHasInternetConnection = isHasInternetConnection;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  OrderDetailStateBuilder();

  OrderDetailStateBuilder get _$this {
    if (_$v != null) {
      _order = _$v.order?.toBuilder();
      _urlToInvite = _$v.urlToInvite;
      _isHasInternetConnection = _$v.isHasInternetConnection;
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderDetailState;
  }

  @override
  void update(void updates(OrderDetailStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetailState build() {
    _$OrderDetailState _$result;
    try {
      _$result = _$v ??
          new _$OrderDetailState._(
              order: _order?.build(),
              urlToInvite: urlToInvite,
              isHasInternetConnection: isHasInternetConnection,
              isLoading: isLoading,
              error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'order';
        _order?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderDetailState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
