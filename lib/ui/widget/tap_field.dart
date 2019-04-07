import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class TapField extends StatelessWidget {
  final String hint;
  final String errorText;
  final VoidCallback onTap;
  final String text;

  Color _actualLineColor = COLOR_ACCENT;
  Widget _errorWidget = Container();
  String _actualText;
  Color _actualTextColor = COLOR_TEXT_HINT;

  TapField({Key key, this.errorText, this.onTap, this.hint, this.text})
      : super(key: key) {
    _initWidgets();
  }

  void _initWidgets() {
    _actualText = hint;
    if (text != null) {
      _actualText = text;
      _actualTextColor = COLOR_TEXT_BLACK;
    }

    if (errorText != null) {
      _actualLineColor = Colors.red;
      _errorWidget = Padding(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Text(
            errorText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          )
        ]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 10, bottom: 5),
                    child: Text(
                      _actualText,
                      style: TextStyle(
                        fontSize: 15,
                        color: _actualTextColor,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
                  child: Container(
                    color: _actualLineColor,
                    height: 1,
                    width: double.infinity,
                  )),
              _errorWidget,
            ],
          ),
        ));
  }
}
