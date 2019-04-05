import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/order.dart';
import 'package:shop_list_app/internal/exeptions.dart';

class ShopListDataSource {
  final http.Client _client;

  final String _baseUrl = "https://test.elementzone.uk";

  ShopListDataSource(this._client);

  Future<List<Order>> getOrders({
    String token,
    int offset,
    int limit,
  }) async {
    final urlRaw = "$_baseUrl/orders";
    final urlEncoded = Uri.encodeFull(urlRaw);
    final body = {
      "api_token",
      "$token",
    };

    final response = await _client.post(urlEncoded, body: body);
    print(response.body);

    return new List<Order>();
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
