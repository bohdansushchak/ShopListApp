import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/exeptions.dart';

class ShopListDataSource {
  final http.Client _client;

  final String _baseUrl = "https://test.elementzone.uk";

  ShopListDataSource(this._client);

  Future<List<Order>> getOrders({
    @required String token,
    @required int offset,
    @required int limit}
  ) async {
    assert(token.isNotEmpty);
    assert(offset != null);
    assert(limit != null);
    final urlRaw = "$_baseUrl/orders";
    final urlEncoded = Uri.encodeFull(urlRaw);
    final body = {
      "api_token": token,
      "offset": offset.toString(),
      "limit": limit.toString(),
    };

    print(body.toString());

    final response = await _client.post(urlEncoded, body: body);

    final mapResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      var orderList = (mapResponse["data"] as List);
      if (orderList.length == 0) throw NoOrdersException();

      return orderList.map((order) => Order.fromMapJson(order)).toList();
    } else {
      _throwException(mapResponse);
    }
  }

  Future<LoginResult> login(String email, String password) async {
    final urlRaw = "$_baseUrl/login";
    final urlEncoded = Uri.encodeFull(urlRaw);
    final body = {"email": email, "password": password};

    final response = await _client.post(urlEncoded, body: body);
    final mapResponse = json.decode(response.body);

    if (response.statusCode == 200)
      return LoginResult.fromJson(mapResponse["data"]);
    else {
      _throwException(mapResponse);
    }
  }

  void _throwException(Map<String, dynamic> map) {
    if (map.containsKey("error")) {
      var message = map["error"]["message"];
      var code = map["error"]["code"];
      throw ServerException(message: message, code: code);
    } else
      throw Exception("Error body is empty");
  }
}
