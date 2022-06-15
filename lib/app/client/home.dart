import 'dart:convert';
import 'dart:developer';

import 'package:qolaily/app/data/models/statistics_model.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:http/http.dart' as http;

class HomeService {
  final client = http.Client();
  UserData _userData = UserData();
  String baseUrl = 'http://34.216.151.246/v1/';

  Future<StatisticsModel> getStatistics() async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.get(
      Uri.parse(baseUrl + 'merchant/statistic/$merchantId'),
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final model = StatisticsModel.fromJson(json.decode(response.body));
      return model;
    } else {
      return StatisticsModel();
    }
  }
}
