import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final EdgeInsets padding;

  MyButton(
      {@required this.onPressed,
      this.buttonText,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        width: double.infinity,
        child: new Container(
            padding: padding,
            child: new RaisedButton(
              onPressed: onPressed,
              child: new Text(buttonText),
              textColor: COLOR_TEXT_BUTTON,
              color: COLOR_ACCENT,
            )));
  }
}
