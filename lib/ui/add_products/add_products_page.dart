import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shop_list_app/ui/add_products/add_products_bloc.dart';
import 'package:shop_list_app/ui/add_products/add_products_state.dart';
import 'package:shop_list_app/ui/add_products/product_item.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';

class AddProductsPage extends StatefulWidget {
  AddProductsPage({Key key}) : super(key: key);

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
                          child: buildTextFieldWithTitle(
                              title: "Product",
                              fieldHint: "Towar",
                              textError: state.productError,
                              controller: _productTextController),
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
                        child: buildTextFieldWithTitle(
                            title: "Kwota",
                            fieldHint: "15 zl",
                            keyboardType: TextInputType.number,
                            textError: state.priceError,
                            controller: _priceTextController)),
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
    try {
      final price = double.parse(priceStr);
      _addProductBloc.saveOrder(price);
    } on Exception catch (e) {}
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

  Widget buildTextFieldWithTitle(
      {@required String title,
      @required String fieldHint,
      @required TextEditingController controller,
      String textError,
      TextInputType keyboardType: TextInputType.text}) {
    assert(title != null);
    assert(fieldHint != null);
    assert(controller != null);
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
      new CustomTextField(
        controller: controller,
        hint: fieldHint,
        keyboardType: keyboardType,
        errorText: textError,
        padding: new EdgeInsets.all(0),
      ),
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