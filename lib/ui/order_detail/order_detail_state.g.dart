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

  factory _$OrderDetailState([void updates(OrderDetailStateBuilder b)]) =>
      (new OrderDetailStateBuilder()..update(updates)).build();

  _$OrderDetailState._({this.error, this.order, this.urlToInvite}) : super._() {
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
        error == other.error &&
        order == other.order &&
        urlToInvite == other.urlToInvite;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, error.hashCode), order.hashCode), urlToInvite.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetailState')
          ..add('error', error)
          ..add('order', order)
          ..add('urlToInvite', urlToInvite))
        .toString();
  }
}

class OrderDetailStateBuilder
    implements Builder<OrderDetailState, OrderDetailStateBuilder> {
  _$OrderDetailState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  Order _order;
  Order get order => _$this._order;
  set order(Order order) => _$this._order = order;

  String _urlToInvite;
  String get urlToInvite => _$this._urlToInvite;
  set urlToInvite(String urlToInvite) => _$this._urlToInvite = urlToInvite;

  OrderDetailStateBuilder();

  OrderDetailStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _order = _$v.order;
      _urlToInvite = _$v.urlToInvite;
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
    final _$result = _$v ??
        new _$OrderDetailState._(
            error: error, order: order, urlToInvite: urlToInvite);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
