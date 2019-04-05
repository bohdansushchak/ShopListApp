library token_manager;

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_list_app/data/model/login_result.dart';

const API_TOKEN_KEY = "token";

class TokenManager {
  Future<SharedPreferences> _preferences;

  TokenManager(this._preferences);

  String token;

  Future<bool> saveToken(LoginResult loginResult) async {
    final prefs = await _preferences;
    token = loginResult.apiToken;
    
    await prefs.setString(API_TOKEN_KEY, loginResult.apiToken);
  }

  Future<String> getSavedToken() async {
    if (token.isEmpty) {
      final prefs = await _preferences;
      var apiToken = prefs.getString(API_TOKEN_KEY);
      return apiToken;
    }
    else return token;
  }
}
