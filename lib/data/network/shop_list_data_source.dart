
import 'package:http/http.dart' as http;
import 'package:shop_list_app/data/model/order.dart';

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
    final body = {"api_token", "$token", };

    final response = await _client.post(urlEncoded, body: body);
    print(response.body);

    return new List<Order>();

  }

  Future<String> login(String email, String password) async {
  
    final urlRaw = "$_baseUrl/login";
    final urlEncoded = Uri.encodeFull(urlRaw);
    final body = {"email": email, "password": password};

    final response = await _client.post(urlEncoded, body: body);

    print(response.body.toString());

    return response.body.toString();
  }

}