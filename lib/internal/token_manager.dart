library token_manager;

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_list_app/data/model/login_result.dart';
import 'package:shop_list_app/data/model/token_expires.dart';

const API_TOKEN_KEY = 'token';
const API_TOKEN_EXPIRES = 'token_expires';

class TokenManager {
  Future<SharedPreferences> _preferences;

  TokenManager(this._preferences);

  String token = '';

  TokenExpires tokenExpires;
  DateTime tokenDateExpires;

  Future saveToken(LoginResult loginResult) async {
    final prefs = await _preferences;
    token = loginResult.apiToken;
    tokenExpires = loginResult.tokenExpires;
    tokenDateExpires = DateTime.parse(tokenExpires.date);
    final tokenExpiresJson = loginResult.tokenExpires.toJson();

    await prefs.setString(API_TOKEN_KEY, token);
    await prefs.setString(API_TOKEN_EXPIRES, tokenExpiresJson);
  }

  Future<String> getSavedToken() async {
    if (token.isEmpty) {
      final prefs = await _preferences;
      final apiToken = prefs.getString(API_TOKEN_KEY);

      final tokenExpiresString = prefs.getString(API_TOKEN_EXPIRES);
      if (tokenExpiresString != null) {
        final tokenExpiresJson = json.decode(tokenExpiresString);

        tokenExpires = TokenExpires.fromMapJson(tokenExpiresJson);
        tokenDateExpires = DateTime.parse(tokenExpires.date);
      }

      return apiToken;
    } else
      return token;
  }

  Future<bool> hasSavedToken() async {
    final token = await getSavedToken();

    return (token != null && token.isNotEmpty);
  }

  Future<bool> isTokenValid() async {
    if (tokenDateExpires == null) await getSavedToken();

    return DateTime.now().isBefore(tokenDateExpires);
  }

  Future refreshToken() async {
    final newTokenDateExpires =
        DateTime.now().add(new Duration(hours: 10)); //TODO: Fix this, ps: as I think need get a new token expires date from server when refreshing token. 

    final newTokenExpired = TokenExpires((b) => b
      ..date = newTokenDateExpires.toString()
      ..timeZone = tokenExpires.timeZone
      ..timeZoneType = tokenExpires.timeZoneType);

    final prefs = await _preferences;
    await prefs.setString(API_TOKEN_EXPIRES, newTokenExpired.toJson());
  }
}
