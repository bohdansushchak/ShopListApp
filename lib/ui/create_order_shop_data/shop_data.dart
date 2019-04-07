import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/helpers.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/custom_text_field.dart';
import 'package:shop_list_app/ui/widget/tap_field.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';

class ShopDataPage extends StatefulWidget {
  final Widget child;

  ShopDataPage({Key key, this.child}) : super(key: key);

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
    } else {
      _showError(shopName, location);
    }
  }

  void _showError(String shopName, String location) {
    setState(() {
      _shopNameError = shopName.isEmpty ? "Shop name can\'t be empty" : null;
      _locationError = location.isEmpty ? "Location can\'t be empty" : null;
      _shopDateError = _shopDate == null ? "Please set a date" : null;
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
    return _buildScaffold();
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: buildMyAppBar("Dane sklepu"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                CustomTextField(
                  errorText: _shopNameError,
                  hint: "Nazwa sklepu",
                  controller: _shopNameController,
                ),
                CustomTextField(
                  errorText: _locationError,
                  hint: "Location",
                  controller: _locationController,
                ),
                TapField(
                  errorText: _shopDateError,
                  onTap: setDate,
                  text: _shopDateString,
                  hint: "Dane sklepu",
                ),
              ],
            ),
          ),
          MyButton(
            buttonText: "next step",
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
