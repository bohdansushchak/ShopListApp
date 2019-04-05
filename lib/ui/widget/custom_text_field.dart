import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

abstract class BaseTextField extends StatelessWidget {
  String hint;
  EdgeInsets padding;
  TextInputType keyboardType;
  TextEditingController controller;

  final UnderlineInputBorder border = new UnderlineInputBorder(
      borderSide: new BorderSide(color: COLOR_ACCENT, width: 2));

  BaseTextField(
      {this.hint,
      this.keyboardType: TextInputType.text,
      this.padding,
      this.controller});
}

class CustomTextField extends BaseTextField {
  CustomTextField(
      {hint,
      keyboardType,
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
      controller,
      onChanged})
      : super(
            hint: hint,
            keyboardType: keyboardType,
            padding: padding,
            controller: controller);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: padding,
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: new InputDecoration(
              hintText: hint, enabledBorder: border, focusedBorder: border),
        ));
  }
}
