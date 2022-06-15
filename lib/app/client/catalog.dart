import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:qolaily/app/data/models/catalog_model.dart';
import 'package:qolaily/app/main/user_data.dart';

class CatalogService {
  final client = http.Client();
  String baseUrl = 'http://34.216.151.246/v1/';
  UserData _userData = UserData();

  Future<CatalogModel> getAllProducts() async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.post(
      Uri.parse(baseUrl + 'product/filter'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        {
          "merchant_id": merchantId,
          "name": "",
          "barcode": "",
          "from": 0,
          "size": 0
        },
      ),
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final model =
          CatalogModel.fromJson({'products': json.decode(response.body)});
      return model;
    } else {
      return CatalogModel();
    }
  }

  Future<int> createProduct(
    String barcode,
    String name,
    String purchasePrice,
    String sellingPrice,
    String amount,
    String categoryName,
  ) async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.post(
      Uri.parse(
        baseUrl + 'product/create',
      ),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "barcode": barcode,
        "name": name,
        "merchant_id": merchantId,
        "purchase_price": tooInt(purchasePrice),
        "selling_price": tooInt(sellingPrice),
        "amount": tooInt(amount),
        "unit_type": "piece",
        "category_name": categoryName
      }),
    );
    log("Create Product Catalog status: " + response.statusCode.toString());
    return response.statusCode;
  }

  Future<int> deleteProduct(int id) async {
    final response = await client.delete(
      Uri.parse(
        baseUrl + 'product/$id',
      ),
    );
    log("Delete Product status: " + response.statusCode.toString());
    return response.statusCode;
  }

  Future<int> update(
      int id,
      String barcode,
      String name,
      String categoryId,
      String stockId,
      String purchasePrice,
      String sellingPrice,
      String amount,
      String categoryName) async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.put(
      Uri.parse(
        baseUrl + 'product/$id',
      ),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "id": id,
        "barcode": barcode,
        "name": name,
        "category_id": tooInt(categoryId),
        "merchant_id": merchantId,
        "stock_id": tooInt(stockId),
        "purchase_price": tooInt(purchasePrice),
        "selling_price": tooInt(purchasePrice),
        "amount": tooInt(amount),
        "unit_type": "piece",
        "category_name": categoryName
      }),
    );

    log("Update Prduct status: " + response.statusCode.toString());
    return response.statusCode;
  }

  int tooInt(String value) => int.parse(value);
}
