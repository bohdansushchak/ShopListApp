// GENERATED CODE - DO NOT MODIFY BY HAND

part of order_list_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderListState extends OrderListState {
  @override
  final BuiltList<Order> orderList;
  @override
  final bool hasReachedEndOfResults;
  @override
  final bool isHasInternetConnection;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool isAuthorized;

  factory _$OrderListState([void updates(OrderListStateBuilder b)]) =>
      (new OrderListStateBuilder()..update(updates)).build();

  _$OrderListState._(
      {this.orderList,
      this.hasReachedEndOfResults,
      this.isHasInternetConnection,
      this.isLoading,
      this.error,
      this.isAuthorized})
      : super._() {
    if (orderList == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'orderList');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'OrderListState', 'hasReachedEndOfResults');
    }
    if (isHasInternetConnection == null) {
      throw new BuiltValueNullFieldError(
          'OrderListState', 'isHasInternetConnection');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'error');
    }
    if (isAuthorized == null) {
      throw new BuiltValueNullFieldError('OrderListState', 'isAuthorized');
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
        orderList == other.orderList &&
        hasReachedEndOfResults == other.hasReachedEndOfResults &&
        isHasInternetConnection == other.isHasInternetConnection &&
        isLoading == other.isLoading &&
        error == other.error &&
        isAuthorized == other.isAuthorized;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, orderList.hashCode),
                        hasReachedEndOfResults.hashCode),
                    isHasInternetConnection.hashCode),
                isLoading.hashCode),
            error.hashCode),
        isAuthorized.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderListState')
          ..add('orderList', orderList)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults)
          ..add('isHasInternetConnection', isHasInternetConnection)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('isAuthorized', isAuthorized))
        .toString();
  }
}

class OrderListStateBuilder
    implements Builder<OrderListState, OrderListStateBuilder> {
  _$OrderListState _$v;

  ListBuilder<Order> _orderList;
  ListBuilder<Order> get orderList =>
      _$this._orderList ??= new ListBuilder<Order>();
  set orderList(ListBuilder<Order> orderList) => _$this._orderList = orderList;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

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

  bool _isAuthorized;
  bool get isAuthorized => _$this._isAuthorized;
  set isAuthorized(bool isAuthorized) => _$this._isAuthorized = isAuthorized;

  OrderListStateBuilder();

  OrderListStateBuilder get _$this {
    if (_$v != null) {
      _orderList = _$v.orderList?.toBuilder();
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _isHasInternetConnection = _$v.isHasInternetConnection;
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _isAuthorized = _$v.isAuthorized;
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
              orderList: orderList.build(),
              hasReachedEndOfResults: hasReachedEndOfResults,
              isHasInternetConnection: isHasInternetConnection,
              isLoading: isLoading,
              error: error,
              isAuthorized: isAuthorized);
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
