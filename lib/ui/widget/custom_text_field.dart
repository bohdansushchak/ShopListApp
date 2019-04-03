import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_list_app/internal/app_colors.dart';

abstract class BaseTextField extends StatelessWidget {
  String hint;
  EdgeInsets padding;
  TextInputType keyboardType;
  ValueChanged<String> onChanged;

  final UnderlineInputBorder border = new UnderlineInputBorder(
      borderSide: new BorderSide(color: COLOR_ACCENT, width: 2));

  BaseTextField(
      {this.hint,
      this.keyboardType: TextInputType.text,
      this.padding,
      this.onChanged});
}

class CustomTextField extends BaseTextField {
  CustomTextField(
      {hint,
      keyboardType,
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
      onChanged})
      : super(
            hint: hint,
            keyboardType: keyboardType,
            padding: padding,
            onChanged: onChanged);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: padding,
        child: TextField(
          onChanged: onChanged,
          keyboardType: keyboardType,
          decoration: new InputDecoration(
              hintText: hint, enabledBorder: border, focusedBorder: border),
        ));
  }
}

class PasswordTextField extends BaseTextField {
  PasswordTextField(
      {hint,
      keyboardType,
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
      onChanged})
      : super(
            hint: hint,
            keyboardType: keyboardType,
            padding: padding,
            onChanged: onChanged);

  void _showPassword() {}
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: padding,
      child: new TextField(
          onChanged: onChanged,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: border,
            focusedBorder: border,
            suffixIcon: new IconButton(
                onPressed: _showPassword,
                icon: new SvgPicture.asset('assets/images/eye.svg'),
                ),
          )),
    );
  }
}
