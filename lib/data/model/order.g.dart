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
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'shopName',
      serializers.serialize(object.shopName,
          specifiedType: const FullType(String)),
      'idOwner',
      serializers.serialize(object.idOwner, specifiedType: const FullType(int)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(List, const [const FullType(Product)])),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
    ];

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'shopName':
          result.shopName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idOwner':
          result.idOwner = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'items':
          result.items = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(Product)]))
              as List<Product>;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final String date;
  @override
  final int id;
  @override
  final String shopName;
  @override
  final int idOwner;
  @override
  final List<Product> items;
  @override
  final String link;
  @override
  final String location;
  @override
  final double price;

  factory _$Order([void updates(OrderBuilder b)]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.date,
      this.id,
      this.shopName,
      this.idOwner,
      this.items,
      this.link,
      this.location,
      this.price})
      : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('Order', 'date');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Order', 'id');
    }
    if (shopName == null) {
      throw new BuiltValueNullFieldError('Order', 'shopName');
    }
    if (idOwner == null) {
      throw new BuiltValueNullFieldError('Order', 'idOwner');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('Order', 'items');
    }
    if (link == null) {
      throw new BuiltValueNullFieldError('Order', 'link');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Order', 'location');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Order', 'price');
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
        date == other.date &&
        id == other.id &&
        shopName == other.shopName &&
        idOwner == other.idOwner &&
        items == other.items &&
        link == other.link &&
        location == other.location &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, date.hashCode), id.hashCode),
                            shopName.hashCode),
                        idOwner.hashCode),
                    items.hashCode),
                link.hashCode),
            location.hashCode),
        price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('date', date)
          ..add('id', id)
          ..add('shopName', shopName)
          ..add('idOwner', idOwner)
          ..add('items', items)
          ..add('link', link)
          ..add('location', location)
          ..add('price', price))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _shopName;
  String get shopName => _$this._shopName;
  set shopName(String shopName) => _$this._shopName = shopName;

  int _idOwner;
  int get idOwner => _$this._idOwner;
  set idOwner(int idOwner) => _$this._idOwner = idOwner;

  List<Product> _items;
  List<Product> get items => _$this._items;
  set items(List<Product> items) => _$this._items = items;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _id = _$v.id;
      _shopName = _$v.shopName;
      _idOwner = _$v.idOwner;
      _items = _$v.items;
      _link = _$v.link;
      _location = _$v.location;
      _price = _$v.price;
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
    final _$result = _$v ??
        new _$Order._(
            date: date,
            id: id,
            shopName: shopName,
            idOwner: idOwner,
            items: items,
            link: link,
            location: location,
            price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
