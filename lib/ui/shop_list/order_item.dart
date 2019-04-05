import 'package:flutter/widgets.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class OrderItemWidget extends StatelessWidget {
  final Widget child;
  final Order order;

  OrderItemWidget({Key key, this.order, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(order.shopName),
            new Text(order.date),
            new Container(
              color: COLOR_ACCENT,
              height: 2,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
