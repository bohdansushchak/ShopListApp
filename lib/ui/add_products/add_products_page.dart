import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
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

  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  Scaffold _buildScaffold() {
    return new Scaffold(
        appBar: buildMyAppBar("Lista zakupów"),
        body: new BlocBuilder(
          bloc: _addProductBloc,
          builder: (context, AddProductsState state) {
            if (state.isOrdesHasBeenCreated) _backToOrderList();
            return new Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 45, left: 45, right: 45, bottom: 25),
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
                              title: "Product",
                              child: CustomTextField(
                                hint: "Towar",
                                controller: _productTextController,
                                errorText: state.productError,
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
                                  tooltip: 'Add product',
                                )),
                          ],
                        ),
                      ],
                    ),
                    new Expanded(child: _buildProductList(state)),
                    new Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: buildWidgetWithTitle(
                          title: "Kwota",
                          child: PriceTextField(
                            hint: '15zl',
                            controller: _priceTextController,
                            errorText: state.priceError,
                          )),
                    ),
                    MyButton(
                      buttonText: 'DONE',
                      onPressed: _saveOrder,
                    )
                  ]),
            );
          },
        ));
  }

  void _addProduct() {
    final product = _productTextController.text;
    _addProductBloc.addProduct(product);
  }

  void _saveOrder() {
    final priceStr = _priceTextController.text;
    _addProductBloc.saveOrder(
        orderPrice: priceStr,
        shopName: widget.shopName,
        location: widget.location,
        date: widget.date);
  }

  Widget _buildProductList(AddProductsState state) {
    return new Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: ListView.builder(
          itemCount: state.products.length,
          itemBuilder: (context, index) {
            return new Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: ProductItem(product: state.products[index]));
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
}
