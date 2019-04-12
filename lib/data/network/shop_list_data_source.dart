import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_list_app/data/model/add_order_model.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/exeptions.dart';
import 'package:connectivity/connectivity.dart';

class ShopListDataSource {
  final http.Client _client;
  final Connectivity _connectivity;

  final String _baseUrl = "https://test.elementzone.uk";

  ShopListDataSource(this._client, this._connectivity);

  Future<List<Order>> getOrders(
      {@required String token,
      @required int offset,
      @required int limit}) async {
    assert(token.isNotEmpty);
    assert(offset != null);
    assert(limit != null);
    final urlEncoded = _encodeUrl('orders');
    final body = {
      "api_token": token,
      "offset": offset.toString(),
      "limit": limit.toString(),
    };
    await _checkInternetConnection();
    final response = await _client.post(urlEncoded, body: body);

    if (response.statusCode == 200) {
      final mapResponse = json.decode(response.body);
      var orderList = (mapResponse["data"] as List);

      if (orderList.length == 0) throw NoOrdersException();

      return orderList.map((order) => Order.fromMapJson(order)).toList();
    } else {
      _provideException(response);
    }
  }

  Future<LoginResult> login(String email, String password) async {
    final urlEncoded = _encodeUrl('login');
    final body = {"email": email, "password": password};
    await _checkInternetConnection();
    final response = await _client.post(urlEncoded, body: body);

    if (response.statusCode == 200) {
      final mapResponse = json.decode(response.body);
      return LoginResult.fromJson(mapResponse["data"]);
    } else {
      _provideException(response);
    }
  }

  Future<bool> addOrder(AddOrderModel model) async {
    final urlEncoded = _encodeUrl('addOrder');

    final body = model.toJson();

    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    await _checkInternetConnection();
    final response =
        await _client.post(urlEncoded, headers: headers, body: body);

    if (response.statusCode == 200)
      return true;
    else
      _provideException(response);
  }

  Future<bool> refreshToken(String token) async {
    final urlEncoded = _encodeUrl('refresh');
    final body = {"api_token": token};

    await _checkInternetConnection();
    final response = await _client.post(urlEncoded, body: body);

    if (response.statusCode == 200) {
      final mapResponse = json.decode(response.body);
      return mapResponse["data"];
    } else
      _provideException(response);
  }

  Future<String> generateLink(String token, int orderId) async {
    final urlEncoded = _encodeUrl('generate');
    final body = {"api_token": token, "id": orderId.toString()};

    await _checkInternetConnection();
    final response = await _client.post(urlEncoded, body: body);

    if (response.statusCode == 200) {
      final mapResponse = json.decode(response.body);
      final subUrl = mapResponse["data"]["link"];
      final url = "$_baseUrl/order/$subUrl";
      return url;
    } else
      _provideException(response);
  }

  void _provideException(http.Response response) {
    switch (response.statusCode) {
      case 401:
        {
          throw UnauthorizedException();
        }
      default:
        {
          final map = json.decode(response.body);
          if (map.containsKey("error")) {
            var message = map["error"]["message"];
            var code = map["error"]["code"];
            throw ServerException(message: message, code: code);
          } else
            throw Exception("Error body is empty");
        }
    }
  }

  String _encodeUrl(String method) => Uri.encodeFull("$_baseUrl/$method");

  Future _checkInternetConnection() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.none)
      throw NoConnectivityException();
  }
}
