// GENERATED CODE - DO NOT MODIFY BY HAND

part of order_detail_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderDetailState extends OrderDetailState {
  @override
  final String error;
  @override
  final Order order;
  @override
  final String urlToInvite;
  @override
  final bool isLoading;

  factory _$OrderDetailState([void updates(OrderDetailStateBuilder b)]) =>
      (new OrderDetailStateBuilder()..update(updates)).build();

  _$OrderDetailState._(
      {this.error, this.order, this.urlToInvite, this.isLoading})
      : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('OrderDetailState', 'error');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('OrderDetailState', 'isLoading');
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
        error == other.error &&
        order == other.order &&
        urlToInvite == other.urlToInvite &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), order.hashCode), urlToInvite.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetailState')
          ..add('error', error)
          ..add('order', order)
          ..add('urlToInvite', urlToInvite)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class OrderDetailStateBuilder
    implements Builder<OrderDetailState, OrderDetailStateBuilder> {
  _$OrderDetailState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  OrderBuilder _order;
  OrderBuilder get order => _$this._order ??= new OrderBuilder();
  set order(OrderBuilder order) => _$this._order = order;

  String _urlToInvite;
  String get urlToInvite => _$this._urlToInvite;
  set urlToInvite(String urlToInvite) => _$this._urlToInvite = urlToInvite;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  OrderDetailStateBuilder();

  OrderDetailStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _order = _$v.order?.toBuilder();
      _urlToInvite = _$v.urlToInvite;
      _isLoading = _$v.isLoading;
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
              error: error,
              order: _order?.build(),
              urlToInvite: urlToInvite,
              isLoading: isLoading);
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
