// GENERATED CODE - DO NOT MODIFY BY HAND

part of order;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'idOwner',
      serializers.serialize(object.idOwner, specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'shopName',
      serializers.serialize(object.shopName,
          specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Product)])),
    ];
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'idOwner':
          result.idOwner = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'shopName':
          result.shopName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Product)])) as BuiltList);
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final int id;
  @override
  final int idOwner;
  @override
  final DateTime date;
  @override
  final String shopName;
  @override
  final String location;
  @override
  final double price;
  @override
  final BuiltList<Product> items;
  @override
  final String link;

  factory _$Order([void updates(OrderBuilder b)]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.id,
      this.idOwner,
      this.date,
      this.shopName,
      this.location,
      this.price,
      this.items,
      this.link})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Order', 'id');
    }
    if (idOwner == null) {
      throw new BuiltValueNullFieldError('Order', 'idOwner');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Order', 'date');
    }
    if (shopName == null) {
      throw new BuiltValueNullFieldError('Order', 'shopName');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Order', 'location');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Order', 'price');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('Order', 'items');
    }
  }

  @override
  Order rebuild(void updates(OrderBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        idOwner == other.idOwner &&
        date == other.date &&
        shopName == other.shopName &&
        location == other.location &&
        price == other.price &&
        items == other.items &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), idOwner.hashCode),
                            date.hashCode),
                        shopName.hashCode),
                    location.hashCode),
                price.hashCode),
            items.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('idOwner', idOwner)
          ..add('date', date)
          ..add('shopName', shopName)
          ..add('location', location)
          ..add('price', price)
          ..add('items', items)
          ..add('link', link))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _idOwner;
  int get idOwner => _$this._idOwner;
  set idOwner(int idOwner) => _$this._idOwner = idOwner;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _shopName;
  String get shopName => _$this._shopName;
  set shopName(String shopName) => _$this._shopName = shopName;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  ListBuilder<Product> _items;
  ListBuilder<Product> get items =>
      _$this._items ??= new ListBuilder<Product>();
  set items(ListBuilder<Product> items) => _$this._items = items;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _idOwner = _$v.idOwner;
      _date = _$v.date;
      _shopName = _$v.shopName;
      _location = _$v.location;
      _price = _$v.price;
      _items = _$v.items?.toBuilder();
      _link = _$v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Order;
  }

  @override
  void update(void updates(OrderBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              id: id,
              idOwner: idOwner,
              date: date,
              shopName: shopName,
              location: location,
              price: price,
              items: items.build(),
              link: link);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
