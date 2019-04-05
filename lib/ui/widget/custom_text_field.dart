import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class PasswordTextField extends StatefulWidget {
  String hint;
  EdgeInsets padding;
  TextEditingController controller;

  final UnderlineInputBorder border = new UnderlineInputBorder(
      borderSide: new BorderSide(color: COLOR_ACCENT, width: 2));

  PasswordTextField(
      {this.hint,
      this.padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
      this.controller});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState(
      hint: hint, padding: padding, controller: controller, border: border);
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  String hint;
  EdgeInsets padding;
  TextEditingController controller;
  UnderlineInputBorder border;

  bool _obscureText = true;

  void _changePasswordShowing() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  _PasswordTextFieldState({this.hint, this.padding, this.controller, this.border});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: padding,
      child: new TextField(
          keyboardType: TextInputType.text,
          controller: controller,
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: border, 
            focusedBorder: border,
            suffixIcon: new IconButton(
              onPressed: _changePasswordShowing,
              icon: new SvgPicture.asset('assets/images/eye.svg'),
            ),
          )),
    );
  }
}
