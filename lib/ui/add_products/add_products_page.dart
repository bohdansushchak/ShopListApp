import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/locale/locales.dart';
import 'package:shop_list_app/main.dart';
import 'package:shop_list_app/ui/add_products/add_products_bloc.dart';
import 'package:shop_list_app/ui/add_products/add_products_state.dart';
import 'package:shop_list_app/ui/add_products/product_item.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';

class AddProductsPage extends StatefulWidget {
  final String shopName;
  final String location;
  final DateTime date;

  AddProductsPage(
      {Key key,
      @required this.shopName,
      @required this.location,
      @required this.date})
      : super(key: key);

  _AddProductsPageState createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  final _productTextController = TextEditingController();
  final _priceTextController = TextEditingController();
  final _addProductBloc = kiwi.Container().resolve<AddProductsBloc>();

  String _productError;
  String _priceError;

  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  Scaffold _buildScaffold() {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: buildMyAppBar(AppLocalizations.of(context).appBarOrderList),
        body: BlocListener(
            bloc: _addProductBloc,
            listener: (BuildContext context, AddProductsState state) =>
                _blocListener(context, state),
            child: new BlocBuilder(
              bloc: _addProductBloc,
              builder: (context, AddProductsState state) {
                if (state.isOrdesHasBeenCreated) _backToOrderList();
                return new Stack(
                  children: <Widget>[
                    new Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                          top: 45, left: 45, right: 45, bottom: 25),
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(
                                  child: buildWidgetWithTitle(
                                      title: AppLocalizations.of(context)
                                          .txtProduct,
                                      child: CustomTextField(
                                        hint: AppLocalizations.of(context)
                                            .hintProduct,
                                        controller: _productTextController,
                                        errorText: _productError,
                                      )),
                                ),
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new SizedBox(
                                        width: 30.0,
                                        height: 30.0,
                                        child: new FloatingActionButton(
                                          elevation: 12,
                                          backgroundColor: COLOR_ACCENT,
                                          child: Icon(
                                            Icons.add,
                                            size: 15,
                                          ),
                                          onPressed: _addProduct,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            new Expanded(child: _buildProductList(state)),
                            new Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: buildWidgetWithTitle(
                                  title: AppLocalizations.of(context).txtPrice,
                                  child: PriceTextField(
                                    hint:
                                        AppLocalizations.of(context).hintPrice,
                                    controller: _priceTextController,
                                    errorText: _priceError,
                                  )),
                            ),
                            MyButton(
                              buttonText: AppLocalizations.of(context).btnDone,
                              onPressed: () => _saveOrder(state),
                            )
                          ]),
                    ),
                    new Align(
                      alignment: Alignment.center,
                      child: state.isLoading
                          ? CircularProgressIndicator()
                          : Container(),
                    )
                  ],
                );
              },
            )));
  }

  void _addProduct() {
    final product = _productTextController.text;
    if (product.isNotEmpty) {
      _addProductBloc.addProduct(product);
      _productTextController.clear();
    } else {
      setState(() {
        _productError = product.isEmpty
            ? AppLocalizations.of(context).errProductNameIsEmpty
            : null;
      });
    }
  }

  void _saveOrder(AddProductsState state) {
    final priceStr = _priceTextController.text;
    if (priceStr.isNotEmpty && state.products.length > 0) {
      _addProductBloc.saveOrder(
          orderPrice: priceStr,
          shopName: widget.shopName,
          location: widget.location,
          date: widget.date,
          locale: Localizations.localeOf(context).languageCode);
    } else {
      setState(() {
        _priceError = priceStr.isEmpty
            ? AppLocalizations.of(context).errPriceIsEmpty
            : null;
        _productError = state.products.length == 0
            ? AppLocalizations.of(context).errItemsIsEmpty
            : null;
      });
    }
  }

  Widget _buildProductList(AddProductsState state) {
    return new Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: ListView.builder(
          itemCount: state.products.length,
          itemBuilder: (context, index) {
            final product = state.products[index];
            return new Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: new ProductItem(
                  product: product,
                  onTap: () => {_addProductBloc.removeProduct(product)},
                ));
          },
        ));
  }

  void _backToOrderList() {
    Navigator.popUntil(context, ModalRoute.withName(ORDER_LIST_PAGE_ROUTE));
  }

  Widget buildWidgetWithTitle({@required String title, Widget child}) {
    assert(title != null);
    return new Column(children: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
      child,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _addProductBloc.dispose();
    _productTextController.dispose();
    _priceTextController.dispose();
  }

  _blocListener(BuildContext context, AddProductsState state) {
    if (!state.isHasInternetConnection) {
      showNoConnectivityDialog(context,
          title: AppLocalizations.of(context).errTitleDialog,
          message: AppLocalizations.of(context).errCheckInternetConn);
    } else if (state.isHasError) {
      showMyAlertDialog(context,
          title: AppLocalizations.of(context).errTitleDialog,
          content: state.error);
    }
  }
}
