import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:qolaily/app/main/user_data.dart';

class Auth {
  final http.Client _client = http.Client();
  final _headers = {
    'Content-Type': 'application/json',
  };

  final UserData _userData = UserData();

  Future login(String username, String password) async {
    try {
      http.Response response = await _client.post(
        Uri.parse('http://34.216.151.246/v1/auth/login'),
        body: jsonEncode({"username": username, "password": password}),
        headers: _headers,
      );
      log('Token: ${response.headers.values.toList()[5].toString().substring(7)}');
      _userData.setToken(
          response.headers.values.toList()[5].toString().substring(7));
      // response.headers.forEach((key, value) {
      //   log('$key: $value');
      // });
      // for (int i = 0; i < response.headers.length; i++) {
      //   log(response.headers[i].toString());
      // }
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future auth(String token) async {
    try {
      http.Response response = await _client.post(
          Uri.parse(
            'http://34.216.151.246/v1/auth/validation',
          ),
          headers: {'Authorization': 'Bearer $token'});
      _userData.setMerchantId(json.decode(response.body)['merchant_id']);
      _userData.setIIN(json.decode(response.body)['IIN']);
      log(response.statusCode.toString());
    } catch (e) {
      throw Exception(e);
    }
  }
}
