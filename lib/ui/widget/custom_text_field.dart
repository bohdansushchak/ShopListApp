import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/internal/validator.dart';

abstract class BaseTextField extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String error;

  final UnderlineInputBorder border = new UnderlineInputBorder(
      borderSide: new BorderSide(color: COLOR_ACCENT, width: 2));

  BaseTextField(
      {this.hint,
      this.keyboardType: TextInputType.text,
      this.controller,
      this.error});
}

class CustomTextField extends BaseTextField {
  CustomTextField(
      {String hint,
      TextInputType keyboardType,
      EdgeInsets padding,
      TextEditingController controller,
      String errorText})
      : super(
            hint: hint,
            keyboardType: keyboardType,
            controller: controller,
            error: errorText);

  @override
  Widget build(BuildContext context) {
    return new TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: new InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: COLOR_TEXT_HINT),
          errorText: error,
          enabledBorder: border,
          focusedBorder: border),
    );
  }
}

class PriceTextField extends BaseTextField {
  PriceTextField(
      {String hint, TextEditingController controller, String errorText})
      : super(hint: hint, controller: controller, error: errorText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        ValidatorInputFormatter(
          editingValidator: DecimalNumberEditingRegexValidator(),
        ),
      ],
      decoration: new InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: COLOR_TEXT_HINT),
          errorText: error,
          enabledBorder: border,
          focusedBorder: border),
    );
  }
}
