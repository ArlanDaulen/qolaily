import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:qolaily/app/data/models/category_create_response_model.dart';

class CategoryService {
  final client = http.Client();
  String baseUrl = 'http://34.216.151.246/v1/';

  Future<CategoryResponseModel> createCategory(
      String name, String description) async {
    final response = await client.post(
      Uri.parse(
        baseUrl + 'product/category/create',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "merchant_id": "adjksfjasj",
        "category_name": name,
        "description": description
      }),
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final model = CategoryResponseModel.fromJson(
        json.decode(response.body),
      );
      return model;
    } else {
      return CategoryResponseModel();
    }
  }

  Future<CategoryResponseModel> updateCategory(
      String name, String description, int id) async {
    log(id.toString());
    final response = await client.put(
      Uri.parse(
       baseUrl + 'product/category/$id',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "merchant_id": "adjksfjasj",
        "category_name": name,
        "description": description
      }),
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final model = CategoryResponseModel.fromJson(
        json.decode(response.body),
      );
      return model;
    } else {
      return CategoryResponseModel();
    }
  }
}
