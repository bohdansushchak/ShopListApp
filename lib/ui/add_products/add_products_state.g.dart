// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_products_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddProductsState extends AddProductsState {
  @override
  final BuiltList<String> products;
  @override
  final bool isOrdesHasBeenCreated;
  @override
  final bool isHasInternetConnection;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool isAuthorized;

  factory _$AddProductsState([void updates(AddProductsStateBuilder b)]) =>
      (new AddProductsStateBuilder()..update(updates)).build();

  _$AddProductsState._(
      {this.products,
      this.isOrdesHasBeenCreated,
      this.isHasInternetConnection,
      this.isLoading,
      this.error,
      this.isAuthorized})
      : super._() {
    if (products == null) {
      throw new BuiltValueNullFieldError('AddProductsState', 'products');
    }
    if (isOrdesHasBeenCreated == null) {
      throw new BuiltValueNullFieldError(
          'AddProductsState', 'isOrdesHasBeenCreated');
    }
    if (isHasInternetConnection == null) {
      throw new BuiltValueNullFieldError(
          'AddProductsState', 'isHasInternetConnection');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AddProductsState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AddProductsState', 'error');
    }
    if (isAuthorized == null) {
      throw new BuiltValueNullFieldError('AddProductsState', 'isAuthorized');
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
        isOrdesHasBeenCreated == other.isOrdesHasBeenCreated &&
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
                    $jc($jc(0, products.hashCode),
                        isOrdesHasBeenCreated.hashCode),
                    isHasInternetConnection.hashCode),
                isLoading.hashCode),
            error.hashCode),
        isAuthorized.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddProductsState')
          ..add('products', products)
          ..add('isOrdesHasBeenCreated', isOrdesHasBeenCreated)
          ..add('isHasInternetConnection', isHasInternetConnection)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('isAuthorized', isAuthorized))
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

  bool _isOrdesHasBeenCreated;
  bool get isOrdesHasBeenCreated => _$this._isOrdesHasBeenCreated;
  set isOrdesHasBeenCreated(bool isOrdesHasBeenCreated) =>
      _$this._isOrdesHasBeenCreated = isOrdesHasBeenCreated;

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

  AddProductsStateBuilder();

  AddProductsStateBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _isOrdesHasBeenCreated = _$v.isOrdesHasBeenCreated;
      _isHasInternetConnection = _$v.isHasInternetConnection;
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _isAuthorized = _$v.isAuthorized;
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
              isOrdesHasBeenCreated: isOrdesHasBeenCreated,
              isHasInternetConnection: isHasInternetConnection,
              isLoading: isLoading,
              error: error,
              isAuthorized: isAuthorized);
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
