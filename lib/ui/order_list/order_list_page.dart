import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/ui/order_list/order_item.dart';
import 'package:shop_list_app/ui/order_list/order_list_bloc.dart';
import 'package:shop_list_app/ui/order_list/order_list_state.dart';

import 'package:shop_list_app/ui/widget/decorated_container.dart';

class OrderListPage extends StatefulWidget {
  final Widget child;

  OrderListPage({Key key, this.child}) : super(key: key);

  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  final _orderListBloc = kiwi.Container().resolve<OrderListBloc>();
  final _scrollController = ScrollController();

  void _goToAddOrderPage() {
    Navigator.pushNamed(context, "/OrderListPage/ShopDataPage/");
  }

  @override
  void initState() {
    super.initState();
    _orderListBloc.fetchOrderList();
  }

  @override
  Widget build(BuildContext context) {
    return _buildScafold();
  }

  Scaffold _buildScafold() {
    return new Scaffold(
      body: new DecoratedContainer(
          child: Center(
              child: new BlocBuilder(
                  bloc: _orderListBloc,
                  builder: (context, OrderListState state) {
                    if (state.isLoading) return CircularProgressIndicator();
                    if (state.isSuccessful) {
                      return _buildOrderList(state);
                    } else
                      return Container();
                  }))),
      floatingActionButton: Container(
        padding: EdgeInsets.only(right: 10, bottom: 20),
        child: FloatingActionButton(
          onPressed: _goToAddOrderPage,
          backgroundColor: COLOR_ACCENT,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildOrderList(OrderListState state) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: ListView.builder(
        itemCount: _calculateListItemCount(state),
        controller: _scrollController,
        itemBuilder: (context, index) {
          return index >= state.orderList.length
              ? _buildLoaderListItem()
              : OrderItemWidget(order: state.orderList[index]);
        },
      ),
    );
  }

  int _calculateListItemCount(OrderListState state) {
    if (state.hasReachedEndOfResults) {
      return state.orderList.length;
    } else {
      return state.orderList.length + 1;
    }
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      _orderListBloc.fetchNextOrderListPage();
    }
    return false;
  }

  Widget _buildLoaderListItem() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _orderListBloc.dispose();
    _scrollController.dispose();
  }
}
