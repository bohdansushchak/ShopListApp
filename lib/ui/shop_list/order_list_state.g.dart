// GENERATED CODE - DO NOT MODIFY BY HAND

part of order_list_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderListState extends OrderListState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Order> orderList;
  @override
  final bool hasReachedEndOfResults;

  factory _$OrderListState([void updates(OrderListStateBuilder b)]) =>
      (new OrderListStateBuilder()..update(updates)).build();

  _$OrderListState._(
      {this.isLoading, this.error, this.orderList, this.hasReachedEndOfResults})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'error');
    }
    if (orderList == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'orderList');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'OrderListState', 'hasReachedEndOfResults');
    }
  }

  @override
  OrderListState rebuild(void updates(OrderListStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderListStateBuilder toBuilder() =>
      new OrderListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderListState &&
        isLoading == other.isLoading &&
        error == other.error &&
        orderList == other.orderList &&
        hasReachedEndOfResults == other.hasReachedEndOfResults;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
            orderList.hashCode),
        hasReachedEndOfResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderListState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('orderList', orderList)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults))
        .toString();
  }
}

class OrderListStateBuilder
    implements Builder<OrderListState, OrderListStateBuilder> {
  _$OrderListState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Order> _orderList;
  ListBuilder<Order> get orderList =>
      _$this._orderList ??= new ListBuilder<Order>();
  set orderList(ListBuilder<Order> orderList) => _$this._orderList = orderList;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  OrderListStateBuilder();

  OrderListStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _orderList = _$v.orderList?.toBuilder();
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderListState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderListState;
  }

  @override
  void update(void updates(OrderListStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderListState build() {
    _$OrderListState _$result;
    try {
      _$result = _$v ??
          new _$OrderListState._(
              isLoading: isLoading,
              error: error,
              orderList: orderList.build(),
              hasReachedEndOfResults: hasReachedEndOfResults);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderList';
        orderList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderListState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
