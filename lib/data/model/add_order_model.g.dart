// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_order_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddOrderModel> _$addOrderModelSerializer =
    new _$AddOrderModelSerializer();

class _$AddOrderModelSerializer implements StructuredSerializer<AddOrderModel> {
  @override
  final Iterable<Type> types = const [AddOrderModel, _$AddOrderModel];
  @override
  final String wireName = 'AddOrderModel';

  @override
  Iterable serialize(Serializers serializers, AddOrderModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'shop_name',
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
      'api_token',
      serializers.serialize(object.apiToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AddOrderModel deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddOrderModelBuilder();

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
        case 'shop_name':
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
        case 'api_token':
          result.apiToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddOrderModel extends AddOrderModel {
  @override
  final String date;
  @override
  final String shopName;
  @override
  final String location;
  @override
  final double price;
  @override
  final BuiltList<Product> items;
  @override
  final String apiToken;

  factory _$AddOrderModel([void updates(AddOrderModelBuilder b)]) =>
      (new AddOrderModelBuilder()..update(updates)).build();

  _$AddOrderModel._(
      {this.date,
      this.shopName,
      this.location,
      this.price,
      this.items,
      this.apiToken})
      : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('AddOrderModel', 'date');
    }
    if (shopName == null) {
      throw new BuiltValueNullFieldError('AddOrderModel', 'shopName');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('AddOrderModel', 'location');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('AddOrderModel', 'price');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('AddOrderModel', 'items');
    }
    if (apiToken == null) {
      throw new BuiltValueNullFieldError('AddOrderModel', 'apiToken');
    }
  }

  @override
  AddOrderModel rebuild(void updates(AddOrderModelBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AddOrderModelBuilder toBuilder() => new AddOrderModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddOrderModel &&
        date == other.date &&
        shopName == other.shopName &&
        location == other.location &&
        price == other.price &&
        items == other.items &&
        apiToken == other.apiToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, date.hashCode), shopName.hashCode),
                    location.hashCode),
                price.hashCode),
            items.hashCode),
        apiToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddOrderModel')
          ..add('date', date)
          ..add('shopName', shopName)
          ..add('location', location)
          ..add('price', price)
          ..add('items', items)
          ..add('apiToken', apiToken))
        .toString();
  }
}

class AddOrderModelBuilder
    implements Builder<AddOrderModel, AddOrderModelBuilder> {
  _$AddOrderModel _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

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

  String _apiToken;
  String get apiToken => _$this._apiToken;
  set apiToken(String apiToken) => _$this._apiToken = apiToken;

  AddOrderModelBuilder();

  AddOrderModelBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _shopName = _$v.shopName;
      _location = _$v.location;
      _price = _$v.price;
      _items = _$v.items?.toBuilder();
      _apiToken = _$v.apiToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddOrderModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddOrderModel;
  }

  @override
  void update(void updates(AddOrderModelBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AddOrderModel build() {
    _$AddOrderModel _$result;
    try {
      _$result = _$v ??
          new _$AddOrderModel._(
              date: date,
              shopName: shopName,
              location: location,
              price: price,
              items: items.build(),
              apiToken: apiToken);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddOrderModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
