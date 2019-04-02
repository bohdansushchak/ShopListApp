import 'package:flutter/material.dart';

abstract class BaseTextField extends StatelessWidget {
  String hint;
  EdgeInsets padding;
  TextInputType keyboardType;

  BaseTextField(
      {this.hint, this.keyboardType: TextInputType.text, this.padding});
}

class CustomTextField extends BaseTextField {
  CustomTextField(
      {hint, keyboardType, padding: const EdgeInsets.fromLTRB(25, 10, 25, 20)})
      : super(hint: hint, keyboardType: keyboardType, padding: padding);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: padding,
        child: TextField(
          keyboardType: keyboardType,
          decoration: new InputDecoration(hintText: hint),
        ));
  }
}

class PasswordTextField extends BaseTextField {
  PasswordTextField(
      {hint, keyboardType, padding: const EdgeInsets.fromLTRB(25, 10, 25, 20)})
      : super(hint: hint, keyboardType: keyboardType, padding: padding);

  void _showPassword() {}
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: padding,
        child: new TextField(
          decoration: InputDecoration(
              hintText: hint,
              suffixIcon: new FlatButton(
                onPressed: _showPassword,
                child: new Image(image: AssetImage('images/eye.png')),
              )),
          keyboardType: TextInputType.text,
        ));
  }
}
