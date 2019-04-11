import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class PasswordTextField extends StatefulWidget {
  final String error;
  final String hint;
  final TextEditingController controller;
  final UnderlineInputBorder border = new UnderlineInputBorder(
      borderSide: new BorderSide(color: COLOR_ACCENT, width: 2));

  PasswordTextField({this.hint, this.controller, this.error});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _changePasswordShowing() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new TextField(
      keyboardType: TextInputType.text,
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hint,
        enabledBorder: widget.border,
        focusedBorder: widget.border,
        errorText: widget.error,
        suffixIcon: new IconButton(
          onPressed: _changePasswordShowing,
          icon: new SvgPicture.asset('assets/images/eye.svg'),
        ),
      ),
    );
  }
}
