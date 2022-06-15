import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qolaily/app/data/models/revision_response_model.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/shared/default_text.dart';

class RevisionService {
  final client = http.Client();
  UserData _userData = UserData();
  String baseUrl = 'http://34.216.151.246/v1/';
  final headers = {'Content-Type': 'application/json'};

  Future<RevisionResponseModel> getAllRevision() async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.post(
      Uri.parse(
        baseUrl + 'inventory/filter',
      ),
      headers: headers,
      body: jsonEncode({"merchant_id": merchantId}),
    );
    log('Revision filter status: ' + response.statusCode.toString());
    if (response.statusCode == 200) {
      final model = RevisionResponseModel.fromJson(
        {'data': json.decode(response.body)},
      );
      return model;
    } else {
      return RevisionResponseModel();
    }
  }

  Future<int> create(String employee) async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.post(
      Uri.parse(baseUrl + 'inventory/create'),
      headers: headers,
      body: jsonEncode({"merchant_id": merchantId, "emplyee": ""}),
    );
    log("CREATE: ${response.statusCode}");
    if (response.statusCode == 200) {
      return json.decode(response.body)['id'];
    } else {
      return 0;
    }
  }

  Future<void> addRevision(
    BuildContext context,
    String? barcode,
    String? name,
    int? receivedAmount,
    int? amount,
    int? inventoryId,
    int? purchasePrice,
    int? sellingPrice,
    int? total,
  ) async {
    final response = await client.post(
      Uri.parse(
        baseUrl + 'inventory/add/product',
      ),
      headers: headers,
      body: jsonEncode({
        "barcode": barcode,
        "name": name,
        "received_amount": receivedAmount,
        "amount": amount,
        "inventory_id": inventoryId,
        "purchase_price": purchasePrice,
        "selling_price": sellingPrice,
        "total": total
      }),
    );
    log("ADD REVISiON: ${response.statusCode}");

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: DefaultText(
          text: response.statusCode == 200
              ? 'Successfully added'
              : 'Something wnt wrong',
        ),
      ),
    );
  }
}
