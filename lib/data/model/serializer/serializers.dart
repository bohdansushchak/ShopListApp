library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:shop_list_app/data/model/add_order_model.dart';
import 'package:shop_list_app/data/model/error_response.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/model/product.dart';
import 'package:shop_list_app/data/model/response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Order,
  Product,
  LoginResult,
  ErrorResponse,
  MyResponse,
  AddOrderModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
