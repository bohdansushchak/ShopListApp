import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/ui/widget/no_connectivity_widget.dart';

const EdgeInsets BOTTOM_BUTTTON_PADDING = EdgeInsets.fromLTRB(45, 10, 45, 35);

AppBar buildMyAppBar(String appBarTitle) {
  return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: COLOR_PRIMARY,
      title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            appBarTitle,
            style: TextStyle(color: Colors.black),
          )));
}

void showMyAlertDialog(BuildContext context, {String title, String content}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(content),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

void showNoConnectivityDialog(BuildContext context,
    {String title, String message}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new NoConnectivityWidget(message: message),
          actions: <Widget>[
            new FlatButton(
                child: new Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        );
      });
}
