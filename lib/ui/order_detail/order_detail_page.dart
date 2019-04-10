import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/internal/helpers.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_bloc.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_state.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/decorated_container.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class OrderDetailPage extends StatefulWidget {
  OrderDetailPage({Key key}) : super(key: key);

  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  final OrderDetailBloc _bloc = kiwi.Container().resolve<OrderDetailBloc>();
  Order order = Order.fromMapJson({
    "id": 2,
    "id_owner": 2,
    "date": "2019-03-17 15:17:35",
    "shop_name": "Unknown Shop",
    "location": "Gdies",
    "price": 21.43,
    "link": "c81e728d9d4c2f636f067f89cc14862c",
    "items": [
      {"id": 3, "order_id": 2, "item": "test"},
      {"id": 4, "order_id": 2, "item": "test2"},
      {"id": 5, "order_id": 2, "item": "test3"}
    ]
  });

  @override
  void initState() {
    _bloc.putOrder(order);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: buildMyAppBar("Dane zamówienie"),
      body: new BlocBuilder(
        bloc: _bloc,
        builder: (context, OrderDetailState state) {
          return new DecoratedContainer(
            padding: EdgeInsets.only(top: 25, right: 35, left: 25, bottom: 25),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Row(children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: new Text(
                      'Biedronka', //state.order.shopName,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
                _buildOrderInfo(state),
                new Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    color: COLOR_ACCENT,
                    height: 2,
                    width: double.infinity,
                  ),
                ),
                new Expanded(
                  child: _buildListItems(state),
                ),
                new MyButton(
                  onPressed: _invite,
                  buttonText: 'Zapros',
                  padding: EdgeInsets.only(left: 10, right: 10),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _invite() {}

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  Widget _buildOrderInfo(OrderDetailState state) {
    return new Column(
      children: <Widget>[
        _buildIconText('assets/images/compass.svg', 'state.order.location'),
        _buildIconText(
            'assets/images/clock.svg', 'formatDateTime(state.order.date)'),
        _buildIconText('assets/images/money.svg', '{state.order.price}zł'),
      ],
    );
  }

  Widget _buildIconText(String assetPath, String text) {
    return new Padding(
        padding: EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 3),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SizedBox(
              width: 25.0,
              height: 25.0,
              child: new SvgPicture.asset(assetPath),
            ),
            new Expanded(
              child: new Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(text,
                      style: TextStyle(
                        fontSize: 16,
                      ))),
            ),
          ],
        ));
  }

  Widget _buildListItems(OrderDetailState state) {
    return new ListView.builder(
      itemCount: 5, //state.order.items.length,
      itemBuilder: (context, index) {
        return new Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('state.order.items[index].item',
                style: TextStyle(fontSize: 21)));
      },
    );
  }
}
