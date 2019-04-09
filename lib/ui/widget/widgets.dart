import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

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


