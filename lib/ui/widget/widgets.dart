import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

AppBar buildMyAppBar(String appBarTitle) {
  return AppBar(
      backgroundColor: COLOR_PRIMARY,
      title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            appBarTitle,
            style: TextStyle(color: Colors.black),
          )));
}

const EdgeInsets BOTTOM_BUTTTON_PADDING = EdgeInsets.fromLTRB(45, 10, 45, 35);
