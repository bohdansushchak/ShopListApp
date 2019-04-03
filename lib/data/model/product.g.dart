// GENERATED CODE - DO NOT MODIFY BY HAND

part of product;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Product> _$productSerializer = new _$ProductSerializer();

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable serialize(Serializers serializers, Product object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'item',
      serializers.serialize(object.item, specifiedType: const FullType(String)),
      'orderId',
      serializers.serialize(object.orderId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

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
        case 'item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Product extends Product {
  @override
  final int id;
  @override
  final String item;
  @override
  final int orderId;

  factory _$Product([void updates(ProductBuilder b)]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._({this.id, this.item, this.orderId}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Product', 'id');
    }
    if (item == null) {
      throw new BuiltValueNullFieldError('Product', 'item');
    }
    if (orderId == null) {
      throw new BuiltValueNullFieldError('Product', 'orderId');
    }
  }

  @override
  Product rebuild(void updates(ProductBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        id == other.id &&
        item == other.item &&
        orderId == other.orderId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), item.hashCode), orderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('id', id)
          ..add('item', item)
          ..add('orderId', orderId))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _item;
  String get item => _$this._item;
  set item(String item) => _$this._item = item;

  int _orderId;
  int get orderId => _$this._orderId;
  set orderId(int orderId) => _$this._orderId = orderId;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _item = _$v.item;
      _orderId = _$v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void updates(ProductBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    final _$result =
        _$v ?? new _$Product._(id: id, item: item, orderId: orderId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
