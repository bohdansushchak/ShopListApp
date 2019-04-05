
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_list_app/internal/app_colors.dart';

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