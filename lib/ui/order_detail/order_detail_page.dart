import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/app_colors.dart';
import 'package:shop_list_app/internal/helpers.dart';
import 'package:shop_list_app/locale/locales.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_bloc.dart';
import 'package:shop_list_app/ui/order_detail/order_detail_state.dart';
import 'package:shop_list_app/ui/widget/custom_buttons.dart';
import 'package:shop_list_app/ui/widget/decorated_container.dart';
import 'package:shop_list_app/ui/widget/widgets.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class OrderDetailPage extends StatefulWidget {
  final Order order;

  OrderDetailPage({Key key, @required this.order}) : super(key: key);

  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  final OrderDetailBloc _bloc = kiwi.Container().resolve<OrderDetailBloc>();

  @override
  void initState() {
    _bloc.initialOrder(widget.order);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new BlocProvider(
      bloc: _bloc,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return new Scaffold(
        appBar: buildMyAppBar(AppLocalizations.of(context).appBarOrderData),
        body: new BlocListener(
          bloc: _bloc,
          listener: (context, state) => _blocListener(context, state),
          child: new BlocBuilder(
            bloc: _bloc,
            builder: (context, OrderDetailState state) {
              return new Stack(
                children: <Widget>[
                  new DecoratedContainer(
                    padding: EdgeInsets.only(
                        top: 25, right: 35, left: 25, bottom: 25),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Row(children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: new Text(
                              state.order != null
                                  ? state.order.shopName
                                  : 'Hmm, somethink going wrong:((',
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
                          buttonText: AppLocalizations.of(context).btnShare,
                          padding: EdgeInsets.only(left: 10, right: 10),
                        ),
                      ],
                    ),
                  ),
                  new Align(
                    child: Center(
                      child: state.isLoading
                          ? CircularProgressIndicator()
                          : Container(),
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }

  void _invite() {
    _bloc.inviteOrder();
  }

  void _blocListener(BuildContext context, OrderDetailState state) {
    if (!state.isHasInternetConnection) {
      showNoConnectivityDialog(context,
          title: AppLocalizations.of(context).errTitleDialog,
          message: AppLocalizations.of(context).errCheckInternetConn);
    } else if (!state.isSuccesfull) {
      showMyAlertDialog(context,
          title: AppLocalizations.of(context).errTitleDialog,
          content: state.error);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  Widget _buildOrderInfo(OrderDetailState state) {
    return new Column(
      children: <Widget>[
        _buildIconText('assets/images/compass.svg', '${state.order.location}'),
        _buildIconText(
            'assets/images/clock.svg', '${formatDateTime(state.order.date)}'),
        _buildIconText('assets/images/money.svg', '${state.order.price}zł'),
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
      itemCount: state.order.items.length,
      itemBuilder: (context, index) {
        return new Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(state.order.items[index].item,
                style: TextStyle(fontSize: 21)));
      },
    );
  }
}
