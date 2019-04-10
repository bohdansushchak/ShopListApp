import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/internal/helpers.dart';

class OrderItemWidget extends StatelessWidget {
  final Order order;

  final textPadding = EdgeInsets.fromLTRB(40, 5, 40, 5);

  OrderItemWidget({Key key, this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: textPadding,
              child: Text(
                order.shopName,
                style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: textPadding,
                  child: Text(
                    formatDateTime(order.date),
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
            child: Container(
              color: COLOR_ACCENT,
              height: 2,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
