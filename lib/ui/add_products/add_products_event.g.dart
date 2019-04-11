// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_products_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddProductEvent extends AddProductEvent {
  @override
  final String product;

  factory _$AddProductEvent([void updates(AddProductEventBuilder b)]) =>
      (new AddProductEventBuilder()..update(updates)).build();

  _$AddProductEvent._({this.product}) : super._() {
    if (product == null) {
      throw new BuiltValueNullFieldError('AddProductEvent', 'product');
    }
  }

  @override
  AddProductEvent rebuild(void updates(AddProductEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AddProductEventBuilder toBuilder() =>
      new AddProductEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddProductEvent && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(0, product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddProductEvent')
          ..add('product', product))
        .toString();
  }
}

class AddProductEventBuilder
    implements Builder<AddProductEvent, AddProductEventBuilder> {
  _$AddProductEvent _$v;

  String _product;
  String get product => _$this._product;
  set product(String product) => _$this._product = product;

  AddProductEventBuilder();

  AddProductEventBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddProductEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddProductEvent;
  }

  @override
  void update(void updates(AddProductEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AddProductEvent build() {
    final _$result = _$v ?? new _$AddProductEvent._(product: product);
    replace(_$result);
    return _$result;
  }
}

class _$RemoveProductevent extends RemoveProductevent {
  @override
  final String product;

  factory _$RemoveProductevent([void updates(RemoveProducteventBuilder b)]) =>
      (new RemoveProducteventBuilder()..update(updates)).build();

  _$RemoveProductevent._({this.product}) : super._() {
    if (product == null) {
      throw new BuiltValueNullFieldError('RemoveProductevent', 'product');
    }
  }

  @override
  RemoveProductevent rebuild(void updates(RemoveProducteventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveProducteventBuilder toBuilder() =>
      new RemoveProducteventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveProductevent && product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(0, product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveProductevent')
          ..add('product', product))
        .toString();
  }
}

class RemoveProducteventBuilder
    implements Builder<RemoveProductevent, RemoveProducteventBuilder> {
  _$RemoveProductevent _$v;

  String _product;
  String get product => _$this._product;
  set product(String product) => _$this._product = product;

  RemoveProducteventBuilder();

  RemoveProducteventBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveProductevent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RemoveProductevent;
  }

  @override
  void update(void updates(RemoveProducteventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveProductevent build() {
    final _$result = _$v ?? new _$RemoveProductevent._(product: product);
    replace(_$result);
    return _$result;
  }
}

class _$SaveOrderEvent extends SaveOrderEvent {
  @override
  final String shopName;
  @override
  final String location;
  @override
  final DateTime date;
  @override
  final String price;
  @override
  final String locale;

  factory _$SaveOrderEvent([void updates(SaveOrderEventBuilder b)]) =>
      (new SaveOrderEventBuilder()..update(updates)).build();

  _$SaveOrderEvent._(
      {this.shopName, this.location, this.date, this.price, this.locale})
      : super._() {
    if (shopName == null) {
      throw new BuiltValueNullFieldError('SaveOrderEvent', 'shopName');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('SaveOrderEvent', 'location');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('SaveOrderEvent', 'date');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('SaveOrderEvent', 'price');
    }
    if (locale == null) {
      throw new BuiltValueNullFieldError('SaveOrderEvent', 'locale');
    }
  }

  @override
  SaveOrderEvent rebuild(void updates(SaveOrderEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SaveOrderEventBuilder toBuilder() =>
      new SaveOrderEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveOrderEvent &&
        shopName == other.shopName &&
        location == other.location &&
        date == other.date &&
        price == other.price &&
        locale == other.locale;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, shopName.hashCode), location.hashCode),
                date.hashCode),
            price.hashCode),
        locale.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SaveOrderEvent')
          ..add('shopName', shopName)
          ..add('location', location)
          ..add('date', date)
          ..add('price', price)
          ..add('locale', locale))
        .toString();
  }
}

class SaveOrderEventBuilder
    implements Builder<SaveOrderEvent, SaveOrderEventBuilder> {
  _$SaveOrderEvent _$v;

  String _shopName;
  String get shopName => _$this._shopName;
  set shopName(String shopName) => _$this._shopName = shopName;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  SaveOrderEventBuilder();

  SaveOrderEventBuilder get _$this {
    if (_$v != null) {
      _shopName = _$v.shopName;
      _location = _$v.location;
      _date = _$v.date;
      _price = _$v.price;
      _locale = _$v.locale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveOrderEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SaveOrderEvent;
  }

  @override
  void update(void updates(SaveOrderEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SaveOrderEvent build() {
    final _$result = _$v ??
        new _$SaveOrderEvent._(
            shopName: shopName,
            location: location,
            date: date,
            price: price,
            locale: locale);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
