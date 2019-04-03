library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/data/model/product.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Order,
  Product,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
