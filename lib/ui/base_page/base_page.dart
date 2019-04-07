import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final String buttonText;
  final VoidCallback onPressed;

  BasePage(
      {Key key,
      this.child,
      this.appBarTitle,
      @required this.buttonText,
      @required this.onPressed})
      : super(key: key) {
    assert(buttonText != null);
    assert(onPressed != null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(appBarTitle),
       
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: child,
              ),
              MyButton(
                buttonText: buttonText,
                padding: BOTTOM_BUTTTON_PADDING,
                onPressed: onPressed,
              )
            ],
          )),
    );
  }
}
