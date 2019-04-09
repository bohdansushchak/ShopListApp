import 'package:flutter/material.dart';
import 'package:shop_list_app/internal/app_colors.dart';

class ProductItem extends StatelessWidget {
  final String product;
  final VoidCallback onTap;

  ProductItem({Key key, this.product, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(product != null);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          color: COLOR_ITEM_BACKGROUND,
          child: Row(
            children: <Widget>[
              SizedBox(width: 10),
              Text(
                product,
                style: TextStyle(
                  color: COLOR_TEXT_HINT,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.grey.shade600,
                onPressed: onTap,
              )
            ],
          ),
        )
      ],
    );
  }
}
