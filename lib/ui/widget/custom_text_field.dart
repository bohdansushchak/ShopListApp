import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

abstract class BaseTextField extends StatelessWidget {
  final String hint;
  final EdgeInsets padding;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String error;

  final UnderlineInputBorder border = new UnderlineInputBorder(
      borderSide: new BorderSide(color: COLOR_ACCENT, width: 2));

  BaseTextField(
      {this.hint,
      this.keyboardType: TextInputType.text,
      this.padding,
      this.controller,
      this.error});
}

class CustomTextField extends BaseTextField {
  CustomTextField(
      {hint,
      keyboardType,
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
      controller,
      errorText})
      : super(
            hint: hint,
            keyboardType: keyboardType,
            padding: padding,
            controller: controller,
            error: errorText);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: padding,
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: new InputDecoration(
              hintText: hint,
              errorText: error,
              enabledBorder: border,
              focusedBorder: border),
        ));
  }
}
