import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:secure_shared_preferences/secure_shared_preferences.dart';

import '../model/token/token.dart';

class TokenRepository {
  final TokenProvider _tokenProvider = TokenProvider();

  Future<Token> getToken() async {
    return await _tokenProvider.getToken();
  }

  Future<void> saveToken(Token token) async {
    debugPrint('saveToken ${token.toJson()}');
    await _tokenProvider.saveToken(token);
  }

  Future<void> deleteToken() async {
    await _tokenProvider.deleteToken();
  }
}

class TokenProvider {
  static const String _tokenKey = 'token';

  Future<Token> getToken() async {
    final prefs = await SecureSharedPref.getInstance();
    final tokenString = await prefs.getString(_tokenKey);
    if (tokenString != null) {
      return Token.fromJson(jsonDecode(tokenString));
    } else {
      throw Exception('Token not found');
    }
  }

  Future<void> saveToken(Token token) async {
    final prefs = await SecureSharedPref.getInstance();
    await prefs.putString(_tokenKey, jsonEncode(token));
  }

  Future<void> deleteToken() async {
    final prefs = await SecureSharedPref.getInstance();
    await prefs.clearAll();
  }
}
