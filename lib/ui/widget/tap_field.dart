import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class TapField extends StatelessWidget {
  final String hint;
  final String errorText;
  final VoidCallback onTap;
  final String text;
  final EdgeInsets padding;

  Color _actualLineColor = COLOR_ACCENT;
  Widget _errorWidget = Container();
  String _actualText;
  Color _actualTextColor = COLOR_TEXT_HINT;

  TapField(
      {Key key,
      this.errorText,
      this.onTap,
      this.hint,
      this.text,
      this.padding: const EdgeInsets.fromLTRB(25, 20, 25, 0)})
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
      _actualLineColor = Colors.red.shade700;
      _errorWidget = Padding(
        padding: EdgeInsets.only(bottom: 5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            errorText,
            style: TextStyle(
              color: Colors.red.shade700,
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
          padding: padding,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      _actualText,
                      style: TextStyle(
                        fontSize: 16,
                        color: _actualTextColor,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Container(
                    color: _actualLineColor,
                    height: 2.0,
                    width: double.infinity,
                  )),
              _errorWidget,
            ],
          ),
        ));
  }
}
