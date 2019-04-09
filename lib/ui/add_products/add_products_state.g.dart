// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_products_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddProductsState extends AddProductsState {
  @override
  final BuiltList<String> products;
  @override
  final String productError;
  @override
  final String priceError;
  @override
  final String error;

  factory _$AddProductsState([void updates(AddProductsStateBuilder b)]) =>
      (new AddProductsStateBuilder()..update(updates)).build();

  _$AddProductsState._(
      {this.products, this.productError, this.priceError, this.error})
      : super._() {
    if (products == null) {
      throw new BuiltValueNullFieldError('AddProductsState', 'products');
    }
  }

  @override
  AddProductsState rebuild(void updates(AddProductsStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AddProductsStateBuilder toBuilder() =>
      new AddProductsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddProductsState &&
        products == other.products &&
        productError == other.productError &&
        priceError == other.priceError &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, products.hashCode), productError.hashCode),
            priceError.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddProductsState')
          ..add('products', products)
          ..add('productError', productError)
          ..add('priceError', priceError)
          ..add('error', error))
        .toString();
  }
}

class AddProductsStateBuilder
    implements Builder<AddProductsState, AddProductsStateBuilder> {
  _$AddProductsState _$v;

  ListBuilder<String> _products;
  ListBuilder<String> get products =>
      _$this._products ??= new ListBuilder<String>();
  set products(ListBuilder<String> products) => _$this._products = products;

  String _productError;
  String get productError => _$this._productError;
  set productError(String productError) => _$this._productError = productError;

  String _priceError;
  String get priceError => _$this._priceError;
  set priceError(String priceError) => _$this._priceError = priceError;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  AddProductsStateBuilder();

  AddProductsStateBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _productError = _$v.productError;
      _priceError = _$v.priceError;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddProductsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddProductsState;
  }

  @override
  void update(void updates(AddProductsStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AddProductsState build() {
    _$AddProductsState _$result;
    try {
      _$result = _$v ??
          new _$AddProductsState._(
              products: products.build(),
              productError: productError,
              priceError: priceError,
              error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddProductsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
