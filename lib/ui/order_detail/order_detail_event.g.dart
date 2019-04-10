// GENERATED CODE - DO NOT MODIFY BY HAND

part of order_detail_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderDetainInitiated extends OrderDetainInitiated {
  @override
  final Order order;

  factory _$OrderDetainInitiated(
          [void updates(OrderDetainInitiatedBuilder b)]) =>
      (new OrderDetainInitiatedBuilder()..update(updates)).build();

  _$OrderDetainInitiated._({this.order}) : super._() {
    if (order == null) {
      throw new BuiltValueNullFieldError('OrderDetainInitiated', 'order');
    }
  }

  @override
  OrderDetainInitiated rebuild(void updates(OrderDetainInitiatedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetainInitiatedBuilder toBuilder() =>
      new OrderDetainInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetainInitiated && order == other.order;
  }

  @override
  int get hashCode {
    return $jf($jc(0, order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetainInitiated')
          ..add('order', order))
        .toString();
  }
}

class OrderDetainInitiatedBuilder
    implements Builder<OrderDetainInitiated, OrderDetainInitiatedBuilder> {
  _$OrderDetainInitiated _$v;

  Order _order;
  Order get order => _$this._order;
  set order(Order order) => _$this._order = order;

  OrderDetainInitiatedBuilder();

  OrderDetainInitiatedBuilder get _$this {
    if (_$v != null) {
      _order = _$v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetainInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderDetainInitiated;
  }

  @override
  void update(void updates(OrderDetainInitiatedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetainInitiated build() {
    final _$result = _$v ?? new _$OrderDetainInitiated._(order: order);
    replace(_$result);
    return _$result;
  }
}

class _$InviteOrderDetail extends InviteOrderDetail {
  @override
  final int id;

  factory _$InviteOrderDetail([void updates(InviteOrderDetailBuilder b)]) =>
      (new InviteOrderDetailBuilder()..update(updates)).build();

  _$InviteOrderDetail._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('InviteOrderDetail', 'id');
    }
  }

  @override
  InviteOrderDetail rebuild(void updates(InviteOrderDetailBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  InviteOrderDetailBuilder toBuilder() =>
      new InviteOrderDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InviteOrderDetail && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InviteOrderDetail')..add('id', id))
        .toString();
  }
}

class InviteOrderDetailBuilder
    implements Builder<InviteOrderDetail, InviteOrderDetailBuilder> {
  _$InviteOrderDetail _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  InviteOrderDetailBuilder();

  InviteOrderDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InviteOrderDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InviteOrderDetail;
  }

  @override
  void update(void updates(InviteOrderDetailBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$InviteOrderDetail build() {
    final _$result = _$v ?? new _$InviteOrderDetail._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
