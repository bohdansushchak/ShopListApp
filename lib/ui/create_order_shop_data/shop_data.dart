import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/helpers.dart';
import 'package:shop_list_app/locale/locales.dart';
import 'package:shop_list_app/ui/add_products/add_products_page.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:shop_list_app/ui/widget/tap_field.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';

class ShopDataPage extends StatefulWidget {
  ShopDataPage({Key key}) : super(key: key);

  _ShopDataPageState createState() => _ShopDataPageState();
}

class _ShopDataPageState extends State<ShopDataPage> {
  final _shopNameController = TextEditingController();
  final _locationController = TextEditingController();
  DateTime _shopDate;

  String _shopNameError;
  String _locationError;
  String _shopDateError;
  String _shopDateString;

  void _nextPage() {
    final shopName = _shopNameController.text;
    final location = _locationController.text;
    if (shopName.isNotEmpty && location.isNotEmpty && _shopDate != null) {
      final route = MaterialPageRoute(
          builder: (BuildContext context) => new AddProductsPage(
                shopName: shopName,
                location: location,
                date: _shopDate,
              ));

      Navigator.of(context).push(route);
    }
    setState(() {
      _shopNameError = shopName.isEmpty
          ? AppLocalizations.of(context).errShopNameIsBlank
          : null;
      _locationError = location.isEmpty
          ? AppLocalizations.of(context).errLocationIsBlank
          : null;
      _shopDateError = _shopDate == null
          ? AppLocalizations.of(context).errDateIsBlank
          : null;
    });
  }

  void setShoppingDate(DateTime shopingDate) {
    if (shopingDate != null) {
      _shopDate = shopingDate;
      var dateStr = formatDateTime(shopingDate);
      setState(() {
        _shopDateString = dateStr;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildScaffold(context);
  }

  Scaffold _buildScaffold(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildMyAppBar(AppLocalizations.of(context).appBarOrderData),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                new Padding(
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: CustomTextField(
                      errorText: _shopNameError,
                      hint: AppLocalizations.of(context).hintShopName,
                      controller: _shopNameController,
                    )),
                new Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: CustomTextField(
                    errorText: _locationError,
                    hint: AppLocalizations.of(context).hintLocation,
                    controller: _locationController,
                  ),
                ),
                new Padding(
                    padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                    child: new TapField(
                      errorText: _shopDateError,
                      onTap: setDate,
                      text: _shopDateString,
                      hint: AppLocalizations.of(context).hintDate,
                    ))
              ],
            ),
          ),
          MyButton(
            buttonText: AppLocalizations.of(context).btnNextStep,
            padding: BOTTOM_BUTTTON_PADDING,
            onPressed: _nextPage,
          )
        ],
      ),
    );
  }

  void setDate() {
    final initialDate = _shopDate == null ? DateTime.now() : _shopDate;

    showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            initialDate: initialDate,
            lastDate: DateTime(2100))
        .then((shopingDate) => setShoppingDate(shopingDate));
  }

  @override
  void dispose() {
    super.dispose();
    _shopNameController.dispose();
    _locationController.dispose();
  }
}
