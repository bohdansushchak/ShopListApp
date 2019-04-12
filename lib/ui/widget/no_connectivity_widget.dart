import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoConnectivityWidget extends StatelessWidget {
  final String message;
  final VoidCallback onTap;

  NoConnectivityWidget({@required this.message, this.onTap});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: 0.8,
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Icon(
              Icons.network_check,
              size: 100,
            ),
            new Text(
              message,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
