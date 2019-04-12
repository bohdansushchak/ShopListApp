import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class ProductItem extends StatelessWidget {
  final String product;
  final VoidCallback onTap;

  ProductItem({Key key, @required this.product, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(product != null);
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Flexible(
            child: new Container(
          color: COLOR_ITEM_BACKGROUND,
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 10),
              new Flexible(
                  child: Text(
                product,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  color: COLOR_TEXT_HINT,
                ),
              )),
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.grey.shade600,
                onPressed: onTap,
              )
            ],
          ),
        ))
      ],
    );
  }
}
