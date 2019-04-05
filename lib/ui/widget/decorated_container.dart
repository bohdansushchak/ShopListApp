import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  final Widget child;

  DecoratedContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/background.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}